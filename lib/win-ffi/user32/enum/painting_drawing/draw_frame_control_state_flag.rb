require_relative '../../../../win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162480(v=vs.85).aspx
    DrawFrameControlStateFlag = enum :draw_frame_control_state_flag, [
        :CAPTIONCLOSE,        0x0000,
        :CAPTIONMIN,          0x0001,
        :CAPTIONMAX,          0x0002,
        :CAPTIONRESTORE,      0x0003,
        :CAPTIONHELP,         0x0004,

        :MENUARROW,           0x0000,
        :MENUCHECK,           0x0001,
        :MENUBULLET,          0x0002,
        :MENUARROWRIGHT,      0x0004,
        :SCROLLUP,            0x0000,
        :SCROLLDOWN,          0x0001,
        :SCROLLLEFT,          0x0002,
        :SCROLLRIGHT,         0x0003,
        :SCROLLCOMBOBOX,      0x0005,
        :SCROLLSIZEGRIP,      0x0008,
        :SCROLLSIZEGRIPRIGHT, 0x0010,

        :BUTTONCHECK,         0x0000,
        :BUTTONRADIOIMAGE,    0x0001,
        :BUTTONRADIOMASK,     0x0002,
        :BUTTONRADIO,         0x0004,
        :BUTTON3STATE,        0x0008,
        :BUTTONPUSH,          0x0010,

        :INACTIVE,            0x0100,
        :PUSHED,              0x0200,
        :CHECKED,             0x0400,

        :TRANSPARENT,         0x0800,
        :HOT,                 0x1000,

        :ADJUSTRECT,          0x2000,
        :FLAT,                0x4000,
        :MONO,                0x8000
    ]

    define_prefix(:DFCS, DrawFrameControlStateFlag)
  end
end