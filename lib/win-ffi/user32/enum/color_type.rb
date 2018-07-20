module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms724371(v=vs.85).aspx
    buffer = [
        :SCROLLBAR,                0,
        :BACKGROUND,               1,
        :ACTIVECAPTION,            2,
        :INACTIVECAPTION,          3,
        :MENU,                     4,
        :WINDOW,                   5,
        :WINDOWFRAME,              6,
        :MENUTEXT,                 7,
        :WINDOWTEXT,               8,
        :CAPTIONTEXT,              9,
        :ACTIVEBORDER,            10,
        :INACTIVEBORDER,          11,
        :APPWORKSPACE,            12,
        :HIGHLIGHT,               13,
        :HIGHLIGHTTEXT,           14,
        :BTNFACE,                 15,
        :BTNSHADOW,               16,
        :GRAYTEXT,                17,
        :BTNTEXT,                 18,
        :INACTIVECAPTIONTEXT,     19,
        :BTNHILIGHT,              20,
        :'3DDKSHADOW',            21,
        :'3DLIGHT',               22,
        :INFOTEXT,                23,
        :INFOBK,                  24,
        :HOTLIGHT,                26,
        :GRADIENTACTIVECAPTION,   27,
        :GRADIENTINACTIVECAPTION, 28,

        :DESKTOP,                  1,
        :'3DFACE',                15,
        :'3DSHADOW',              16,
        :'3DHIGHLIGHT',           20,
        :'3DHILIGHT',             20,
        :BTNHIGHLIGHT,            20,
    ]

    buffer += [:MENUHILIGHT, 29, :MENUBAR, 30] if WINDOWS_VERSION >= :xp

    ColorType = enum :color_type, buffer
    define_prefix(:COLOR, ColorType)
  end
end
