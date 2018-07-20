module WinFFI
  module User32
    # Scroll Bar Constants
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/wm-vscroll
    ScrollbarHorizontal = enum :scrollbar_horizontal, [
        # Scroll Bar Commands
        :LINELEFT,      0,
        :LINERIGHT,     1,
        :PAGELEFT,      2,
        :PAGERIGHT,     3,
        :THUMBPOSITION, 4,
        :THUMBTRACK,    5,
        :LEFT,          6,
        :RIGHT,         7,
        :ENDSCROLL,     8
    ]

    define_prefix(:SB, ScrollbarHorizontal)
  end
end