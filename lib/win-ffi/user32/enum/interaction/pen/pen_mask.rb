module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # https://docs.microsoft.com/en-us/previous-versions/windows/desktop/inputmsg/pen-mask-constants
      PenMask = enum :pen_mask, [
          :NONE,     0x00000000,
          :PRESSURE, 0x00000001,
          :ROTATION, 0x00000002,
          :TILT_X,   0x00000004,
          :TILT_Y,   0x00000008,
      ]

      define_prefix(:PEN_MASK, PenMask)
    end
  end
end