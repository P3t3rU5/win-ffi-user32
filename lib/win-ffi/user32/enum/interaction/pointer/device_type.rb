module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802893
      buffer = [:INTEGRATED_PEN, 0x00000001, :EXTERNAL_PEN, 0x00000002, :TOUCH, 0x00000003, :MAX,0xFFFFFFFF]

      buffer += [:TOUCH_PAD, 0x00000004] if WINDOWS_VERSION >= 8.1

      POINTER_DEVICE_TYPE = enum :pointer_device_type, buffer

      define_prefix(:POINTER_DEVICE_TYPE, POINTER_DEVICE_TYPE)
    end
  end
end