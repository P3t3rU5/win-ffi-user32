require 'win-ffi/user32'

module WinFFI
  module User32
    # State type
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162496%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
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
