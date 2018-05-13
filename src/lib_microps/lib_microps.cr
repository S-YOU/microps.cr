lib LibMicrops
  alias IpAddrT = Uint32T
  alias SsizeT = X__SsizeT
  alias Uint16T = X__Uint16T
  alias Uint32T = X__Uint32T
  alias Uint8T = X__Uint8T
  alias X__SsizeT = LibC::Long
  alias X__Uint16T = LibC::UShort
  alias X__Uint32T = LibC::UInt
  alias X__Uint8T = UInt8

  struct EthernetAddrT
    addr : Uint8T[6]
  end
end

require "./lib_microps_util.cr"
require "./lib_microps_dhcp.cr"
require "./lib_microps_ethernet.cr"
require "./lib_microps_tcp.cr"
require "./lib_microps_microps.cr"
require "./lib_microps_udp.cr"
require "./lib_microps_ip.cr"
require "./lib_microps_icmp.cr"
require "./lib_microps_device.cr"
require "./lib_microps_arp.cr"
