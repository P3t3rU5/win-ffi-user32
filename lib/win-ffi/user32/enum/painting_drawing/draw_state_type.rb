module WinFFI
  module User32
    # Image type
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawstatea
    DrawStateType = enum :draw_state_type, [
        :COMPLEX,    0x0000,
        :TEXT,       0x0001,
        :PREFIXTEXT, 0x0002,
        :ICON,       0x0003,
        :BITMAP,     0x0004
    ]

    define_prefix(:DST, DrawStateType)
  end
end