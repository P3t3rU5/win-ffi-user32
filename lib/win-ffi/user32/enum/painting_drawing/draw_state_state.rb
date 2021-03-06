module WinFFI
  module User32
    # State type
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawstatea
    DrawStateState = enum :draw_state_state, [
        :NORMAL,     0x0000,
        :UNION,      0x0010, # Gray string appearance
        :DISABLED,   0x0020,
        :MONO,       0x0080,

        :HIDEPREFIX, 0x0200,
        :PREFIXONLY, 0x0400,

        :RIGHT,      0x8000,
    ]

    define_prefix(:DSS, DrawStateState)
  end
end
