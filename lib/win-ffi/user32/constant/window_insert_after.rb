module WinFFI
  module User32
    HWND_TOP       = FFI::MemoryPointer.new(User32.find_type(:hwnd)).write_int(0)
    HWND_BOTTOM    = FFI::MemoryPointer.new(User32.find_type(:hwnd)).write_int(1)
    HWND_TOPMOST   = FFI::MemoryPointer.new(User32.find_type(:hwnd)).write_int(-1)
    HWND_NOTOPMOST = FFI::MemoryPointer.new(User32.find_type(:hwnd)).write_int(-2)
  end
end