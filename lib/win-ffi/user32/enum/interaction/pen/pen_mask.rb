require 'win-ffi/user32'

module WinFFI
  module User32
    if WINDOWS_VERSION >= 8
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh969209(v=vs.85).aspx
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