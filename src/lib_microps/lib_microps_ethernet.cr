lib LibMicrops
  fun ethernet_add_protocol(type : Uint16T, callback : (Uint8T*, LibC::Int, EthernetAddrT*, EthernetAddrT* -> Void)) : LibC::Int
  fun ethernet_addr_ntop(n : EthernetAddrT*, p : LibC::Char*, size : LibC::Int) : LibC::Char*
  fun ethernet_addr_pton(p : LibC::Char*, n : EthernetAddrT*) : LibC::Int
  fun ethernet_device_close
  fun ethernet_device_open(name : LibC::Char*, addr : LibC::Char*) : LibC::Int
  fun ethernet_device_run : LibC::Int
  fun ethernet_get_addr(dst : EthernetAddrT*) : EthernetAddrT*
  fun ethernet_init : LibC::Int
  fun ethernet_input(frame : Uint8T*, flen : LibC::Int)
  fun ethernet_output(type : Uint16T, payload : Uint8T*, plen : LibC::Int, paddr : Void*, dst : EthernetAddrT*) : SsizeT
end
