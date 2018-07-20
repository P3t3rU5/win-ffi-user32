module WinFFI
  module User32
    # WM_NCCALCSIZE "window valid rect" return values
    # https://docs.microsoft.com/en-us/windows/desktop/winmsg/wm-nccalcsize#return-value
    WindowValidRect = enum :window_valid_rect, [
        :ALIGNTOP,     0x0010,
        :ALIGNLEFT,    0x0020,
        :ALIGNBOTTOM,  0x0040,
        :ALIGNRIGHT,   0x0080,
        :HREDRAW,      0x0100,
        :VREDRAW,      0x0200,
        :REDRAW,       0x0300,
        :VALIDRECTS,   0x0400
    ]

    define_prefix(:WVR, WindowValidRect)
  end
end