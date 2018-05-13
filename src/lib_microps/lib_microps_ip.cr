lib LibMicrops
  alias X__IpProtocolHandlerT = (Uint8T*, LibC::Int, IpAddrT*, IpAddrT* -> Void)
  fun ip_add_protocol(protocol : Uint8T, handler : X__IpProtocolHandlerT) : LibC::Int
  fun ip_addr_ntop(n : IpAddrT*, p : LibC::Char*, size : LibC::Int) : LibC::Char*
  fun ip_addr_pton(p : LibC::Char*, n : IpAddrT*) : LibC::Int
  fun ip_get_addr(dst : IpAddrT*) : IpAddrT
  fun ip_init(addr : LibC::Char*, netmask : LibC::Char*, gateway : LibC::Char*, reconfigure : Uint8T) : LibC::Int
  fun ip_output(protocol : Uint8T, buf : Uint8T*, len : LibC::Int, addr : IpAddrT*) : SsizeT
end
