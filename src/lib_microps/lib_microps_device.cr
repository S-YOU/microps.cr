lib LibMicrops
  fun device_close(device : DeviceT)
  fun device_input(device : DeviceT, callback : (Uint8T*, LibC::Int -> Void), timeout : LibC::Int)
  fun device_open(name : LibC::Char*) : DeviceT
  fun device_output : LibC::Int
  type DeviceT = Void*
end
