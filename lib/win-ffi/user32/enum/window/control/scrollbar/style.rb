module WinFFI
  module User32
    # Scroll Bar Styles
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/scroll-bar-control-styles
    ScrollBarStyle = enum :scroll_bar_style, [
        :HORZ,                    0x0000,
        :VERT,                    0x0001,
        :TOPALIGN,                0x0002,
        :LEFTALIGN,               0x0002,
        :BOTTOMALIGN,             0x0004,
        :RIGHTALIGN,              0x0004,
        :SIZEBOXTOPLEFTALIGN,     0x0002,
        :SIZEBOXBOTTOMRIGHTALIGN, 0x0004,
        :SIZEBOX,                 0x0008,
        :SIZEGRIP,                0x0010,
    ]

    define_prefix(:SBS, ScrollBarStyle)
  end
end