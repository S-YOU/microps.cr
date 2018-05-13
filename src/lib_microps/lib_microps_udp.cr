lib LibMicrops
  fun udp_api_bind(soc : LibC::Int, port : Uint16T) : LibC::Int
  fun udp_api_close(soc : LibC::Int) : LibC::Int
  fun udp_api_open : LibC::Int
  fun udp_api_recvfrom(soc : LibC::Int, buf : Uint8T*, size : LibC::Int, peer : IpAddrT*, port : Uint16T*) : SsizeT
  fun udp_api_sendto(soc : LibC::Int, buf : Uint8T*, len : LibC::Int, peer : IpAddrT*, port : Uint16T) : SsizeT
  fun udp_init : LibC::Int
end
