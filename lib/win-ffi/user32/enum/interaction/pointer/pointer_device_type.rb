require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 8
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802893(v=vs.85).aspx
      buffer = [
          :INTEGRATED_PEN, 0x00000001,
          :EXTERNAL_PEN,   0x00000002,
          :TOUCH,          0x00000003,
          :MAX,            0xFFFFFFFF
      ]

      if WindowsVersion >= 8.1
        buffer += [
            :TOUCH_PAD, 0x00000004
        ]
      end

      PointerDeviceType = enum :pointer_device_type, buffer

      define_prefix(:POINTER_DEVICE_TYPE, PointerDeviceType)
    end
  end
end