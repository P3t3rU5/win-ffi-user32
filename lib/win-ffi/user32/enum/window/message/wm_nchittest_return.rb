require 'win-ffi/user32'

module WinFFI
  module User32
    # WM_NCHITTEST and MOUSEHOOKSTRUCT Mouse Position Codes
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645618(v=vs.85).aspx
    WmNchittestReturn = enum :wm_nchittest_return, [
        :ERROR,       -2,
        :TRANSPARENT, -1,
        :NOWHERE,      0,
        :CLIENT,       1,
        :CAPTION,      2,
        :SYSMENU,      3,
        :GROWBOX,      4,
        :SIZE,         4,
        :MENU,         5,
        :HSCROLL,      6,
        :VSCROLL,      7,
        :MINBUTTON,    8,
        :MAXBUTTON,    9,
        :LEFT,        10,
        :RIGHT,       11,
        :TOP,         12,
        :TOPLEFT,     13,
        :TOPRIGHT,    14,
        :BOTTOM,      15,
        :BOTTOMLEFT,  16,
        :BOTTOMRIGHT, 17,
        :BORDER,      18,
        :REDUCE,       8,
        :ZOOM,         9,
        :SIZEFIRST,   10,
        :SIZELAST,    17,
        :OBJECT,      19,
        :CLOSE,       20,
        :HELP,        21,
    ]

    define_prefix(:HT, WmNchittestReturn, true)
  end
end