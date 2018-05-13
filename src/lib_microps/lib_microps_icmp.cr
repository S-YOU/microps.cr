lib LibMicrops
  fun icmp_init : LibC::Int
  fun icmp_recv(packet : Uint8T*, plen : LibC::Int, src : IpAddrT*, dst : IpAddrT*)
end
