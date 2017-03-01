require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648065(v=vs.85).aspx
    buffer = [
        :MASK,         0x0001,
        :IMAGE,        0x0002,
        :NORMAL,       0x0003,
        :COMPAT,       0x0004,
        :DEFAULTSIZE,  0x0008,
    ]

    buffer += [:NOMIRROR, 0x0010] if WINDOWS_VERSION >= :xp

    DrawIconExFlag = enum :draw_icon_ex_flag, buffer

    define_prefix(:DI, DrawIconExFlag)
  end
end