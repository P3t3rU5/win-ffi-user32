require 'win-ffi/user32'

module WinFFI
  module User32
    if WINDOWS_VERSION >= 8
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh969208(v=vs.85).aspx
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