module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms724500
    ArrangeWindow = enum :arrange_window, [
        :BOTTOMLEFT,  0x0000,
        :BOTTOMRIGHT, 0x0001,
        :TOPLEFT,     0x0002,
        :TOPRIGHT,    0x0003,
        :STARTMASK,   0x0003,
        :STARTRIGHT,  0x0001,
        :STARTTOP,    0x0002,

        :LEFT,        0x0000,
        :RIGHT,       0x0000,
        :UP,          0x0004,
        :DOWN,        0x0004,
        :HIDE,        0x0008,
    ]

    define_prefix(:ARW, ArrangeWindow)
  end
end
