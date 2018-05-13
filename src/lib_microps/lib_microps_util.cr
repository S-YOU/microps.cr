lib LibMicrops
  fun cksum16(data : Uint16T*, size : Uint16T, init : Uint32T) : Uint16T
  fun hton16(h : Uint16T) : Uint16T
  fun hton32(h : Uint32T) : Uint32T
  fun maskchk(mask : Uint32T*, size : LibC::Int, offset : LibC::Int, len : LibC::Int) : LibC::Int
  fun maskclr(mask : Uint32T*, size : LibC::Int)
  fun maskdbg(mask : Void*, size : LibC::Int)
  fun maskset(mask : Uint32T*, size : LibC::Int, offset : LibC::Int, len : LibC::Int)
  fun ntoh16(n : Uint16T) : Uint16T
  fun ntoh32(n : Uint32T) : Uint32T
  fun queue_pop(queue : QueueHead*) : QueueEntry*
  fun queue_push(queue : QueueHead*, data : Void*, size : LibC::Int) : QueueEntry*

  struct QueueEntry
    data : Void*
    size : LibC::Int
    next : QueueEntry*
  end

  struct QueueHead
    next : QueueEntry*
    tail : QueueEntry*
    num : LibC::UInt
  end

  fun hexdump(fp : Void*, data : Void*, size : LibC::Int)
  $stderr : Void*
end
