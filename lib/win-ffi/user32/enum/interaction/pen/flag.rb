module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # https://docs.microsoft.com/en-us/previous-versions/windows/desktop/inputmsg/pen-flags-constants
      PenFlag = enum :pen_flag, [
          :NONE,     0x00000000,
          :BARREL,   0x00000001,
          :INVERTED, 0x00000002,
          :ERASER,   0x00000004,
      ]

      define_prefix(:PEN_FLAG, PenFlag)
    end
  end
end