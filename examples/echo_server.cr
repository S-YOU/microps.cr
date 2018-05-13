require "../src/lib_microps/lib_microps"

class EchoServer
  @soc = -1
  @buf = uninitialized UInt8[65536]

  def initialize
    @param = LibMicrops::MicropsParam.new(
      ethernet_device: "enp0s10",
      ethernet_addr: "08:00:27:78:59:c0",
      ip_addr: "1.1.1.1",
      ip_netmask: "255.255.255.252",
      ip_gateway: nil,
      use_dhcp: 0
    )
  end

  def run
    buf = @buf.to_unsafe

    cleanup if microps_init(pointerof(@param)) == -1

    @soc = tcp_api_open
    cleanup if @soc == -1

    cleanup if tcp_api_bind(@soc, hton16(7)) == -1

    tcp_api_listen(@soc)

    acc = tcp_api_accept(@soc)
    cleanup if acc == -1

    printf("accept success, @soc  =%d, acc=%d\n", @soc, acc)
    while true
      len = tcp_api_recv(acc, buf, @buf.size)
      break if len <= 0
      hexdump(stderr, buf, len)
      tcp_api_send(acc, buf, len)
    end
    tcp_api_close(acc)

    tcp_api_close(@soc)
    microps_cleanup
    0
  end

  def cleanup
    tcp_api_close(@soc) if @soc != -1
    microps_cleanup
    exit(-1)
  end

  forward_missing_to LibMicrops
end

EchoServer.new.run

