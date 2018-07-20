module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawiconex#parameters
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