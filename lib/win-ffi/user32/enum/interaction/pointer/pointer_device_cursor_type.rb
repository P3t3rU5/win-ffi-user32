require 'win-ffi/user32'

module WinFFI
  module User32
    if WINDOWS_VERSION >= 8
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802890(v=vs.85).aspx
      POINTER_DEVICE_CURSOR_TYPE = enum :pointer_device_cursor_type, [
          :UNKNOWN, 0x00000000,
          :TIP,     0x00000001,
          :ERASER,  0x00000002,
          :MAX,     0xFFFFFFFF
      ]

      define_prefix(:POINTER_DEVICE_CURSOR_TYPE, POINTER_DEVICE_CURSOR_TYPE)
    end
  end
end