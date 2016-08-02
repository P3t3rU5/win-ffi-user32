require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms724385(v=vs.85).aspx
    buffer = [
        :CXSCREEN,           0,
        :CYSCREEN,           1,
        :CXVSCROLL,          2,
        :CYHSCROLL,          3,
        :CYCAPTION,          4,
        :CXBORDER,           5,
        :CYBORDER,           6,
        :CXDLGFRAME,         7,
        :CXFIXEDFRAME,       7,
        :CYDLGFRAME,         8,
        :CYFIXEDFRAME,       8,
        :CYVTHUMB,           9,
        :CXHTHUMB,          10,
        :CXICON,            11,
        :CYICON,            12,
        :CXCURSOR,          13,
        :CYCURSOR,          14,
        :CYMENU,            15,
        :CXFULLSCREEN,      16,
        :CYFULLSCREEN,      17,
        :CYKANJIWINDOW,     18,
        :MOUSEPRESENT,      19,
        :CYVSCROLL,         20,
        :CXHSCROLL,         21,
        :DEBUG,             22,
        :SWAPBUTTON,        23,
        :RESERVED1,         24,
        :RESERVED2,         25,
        :RESERVED3,         26,
        :RESERVED4,         27,
        :CXMIN,             28,
        :CYMIN,             29,
        :CXSIZE,            30,
        :CYSIZE,            31,
        :CXFRAME,           32,
        :CXSIZEFRAME,       32,
        :CYFRAME,           33,
        :CYSIZEFRAME,       33,
        :CXMINTRACK,        34,
        :CYMINTRACK,        35,
        :CXDOUBLECLK,       36,
        :CYDOUBLECLK,       37,
        :CXICONSPACING,     38,
        :CYICONSPACING,     39,
        :MENUDROPALIGNMENT, 40,
        :PENWINDOWS,        41,
        :DBCSENABLED,       42,
        :CMOUSEBUTTONS,     43,
        :SECURE,            44,
        :CXEDGE,            45,
        :CYEDGE,            46,
        :CXMINSPACING,      47,
        :CYMINSPACING,      48,
        :CXSMICON,          49,
        :CYSMICON,          50,
        :CYSMCAPTION,       51,
        :CXSMSIZE,          52,
        :CYSMSIZE,          53,
        :CXMENUSIZE,        54,
        :CYMENUSIZE,        55,
        :ARRANGE,           56,
        :CXMINIMIZED,       57,
        :CYMINIMIZED,       58,
        :CXMAXTRACK,        59,
        :CYMAXTRACK,        60,
        :CXMAXIMIZED,       61,
        :CYMAXIMIZED,       62,
        :NETWORK,           63,

        :CLEANBOOT,         67,
        :CXDRAG,            68,
        :CYDRAG,            69,
        :SHOWSOUNDS,        70,
        :CXMENUCHECK,       71,
        :CYMENUCHECK,       72,
        :SLOWMACHINE,       73,
        :MIDEASTENABLED,    74,
        :MOUSEWHEELPRESENT, 75,
        :XVIRTUALSCREEN,    76,
        :YVIRTUALSCREEN,    77,
        :CXVIRTUALSCREEN,   78,
        :CYVIRTUALSCREEN,   79,
        :CMONITORS,         80,
        :SAMEDISPLAYFORMAT, 81,
        :IMMENABLED,        82,

        :REMOTESESSION, 0x1000,
    ]

    if WindowsVersion >= :xp
      buffer += [
          :CXFOCUSBORDER,            83,
          :CYFOCUSBORDER,            84,
          :TABLETPC,                 86,
          :MEDIACENTER,              87,
          :STARTER,                  88,
          :SERVERR2,                 89,
          :SHUTTINGDOWN,         0x2000,
          :REMOTECONTROL,        0x2001,
          :CARETBLINKINGENABLED, 0x2002
      ]
      if WindowsVersion >= :vista
        buffer += [
            :MOUSEHORIZONTALWHEELPRESENT, 91,
            :CXPADDEDBORDER,              92,
        ]
        if WindowsVersion >= 7
          buffer += [
              :DIGITIZER,      94,
              :MAXIMUMTOUCHES, 95,
              :CMETRICS,       97
          ]
          if WindowsVersion >= 8
            buffer += [
                :CONVERTIBLESLATEMODE, 0x2003,
                :SYSTEMDOCKED,         0x2004,
            ]
          end
        else
          buffer += [:CMETRICS, 93]
        end
      else

      end
    else
      buffer += [:CMETRICS, 83]
    end

    SystemMetricsFlag = enum :system_metrics_flag, buffer

    define_prefix(:SM, SystemMetricsFlag)
  end
end