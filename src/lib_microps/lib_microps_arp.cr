lib LibMicrops
  fun arp_init : LibC::Int
  fun arp_resolve(pa : IpAddrT*, ha : EthernetAddrT*, data : Void*, len : LibC::Int) : LibC::Int
end
