module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # https://docs.microsoft.com/en-us/previous-versions/windows/desktop/inputmsg/touch-mask-constants
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