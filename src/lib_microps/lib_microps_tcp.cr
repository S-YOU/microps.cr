lib LibMicrops
  fun tcp_api_accept(soc : LibC::Int) : LibC::Int
  fun tcp_api_bind(soc : LibC::Int, port : Uint16T) : LibC::Int
  fun tcp_api_close(soc : LibC::Int) : LibC::Int
  fun tcp_api_connect(soc : LibC::Int, addr : IpAddrT*, port : Uint16T) : LibC::Int
  fun tcp_api_listen(soc : LibC::Int) : LibC::Int
  fun tcp_api_open : LibC::Int
  fun tcp_api_recv(soc : LibC::Int, buf : Uint8T*, size : LibC::Int) : SsizeT
  fun tcp_api_send(soc : LibC::Int, buf : Uint8T*, len : LibC::Int) : SsizeT
  fun tcp_init : LibC::Int
end
