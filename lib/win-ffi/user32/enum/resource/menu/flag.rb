module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms647616(v=vs.85).aspx
    MenuFlag = enum :menu_flag, [
        :INSERT,          0x00000000,
        :CHANGE,          0x00000080,
        :APPEND,          0x00000100,
        :DELETE,          0x00000200,
        :REMOVE,          0x00001000,

        :BYCOMMAND,       0x00000000,
        :BYPOSITION,      0x00000400,

        :SEPARATOR,       0x00000800,

        :ENABLED,         0x00000000,
        :GRAYED,          0x00000001,
        :DISABLED,        0x00000002,

        :UNCHECKED,       0x00000000,
        :CHECKED,         0x00000008,
        :USECHECKBITMAPS, 0x00000200,

        :STRING,          0x00000000,
        :BITMAP,          0x00000004,
        :OWNERDRAW,       0x00000100,

        :POPUP,           0x00000010,
        :MENUBARBREAK,    0x00000020,
        :MENUBREAK,       0x00000040,

        :UNHILITE,        0x00000000,
        :HILITE,          0x00000080,

        :DEFAULT,         0x00001000,
        :SYSMENU,         0x00002000,
        :HELP,            0x00004000,
        :RIGHTJUSTIFY,    0x00004000,

        :MOUSESELECT,     0x00008000,
        :END,             0x00000080, # Obsolete -- only used by old RES files
    ]

    define_prefix(:MF, MenuFlag)
  end
end