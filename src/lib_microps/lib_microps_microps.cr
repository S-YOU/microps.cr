lib LibMicrops
  fun microps_cleanup
  fun microps_init(param : MicropsParam*) : LibC::Int

  struct MicropsParam
    ethernet_device : LibC::Char*
    ethernet_addr : LibC::Char*
    ip_addr : LibC::Char*
    ip_netmask : LibC::Char*
    ip_gateway : LibC::Char*
    use_dhcp : Uint8T
  end
end
