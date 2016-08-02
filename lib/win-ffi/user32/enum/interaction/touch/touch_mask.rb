require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 8
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh969217(v=vs.85).aspx
      TouchMask = enum :touch_mask, [
          :NONE,        0x00000000,
          :CONTACTAREA, 0x00000001,
          :ORIENTATION, 0x00000002,
          :PRESSURE,    0x00000004,
      ]

      define_prefix(:TOUCH_MASK, TouchMask)
    end
  end
end