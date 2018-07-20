module WinFFI
  module User32
    # MOUSEKEYS dwFlags field
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373593(v=vs.85).aspx
    MouseKeysFlag = enum :mouse_keys_flag, [
        :MOUSEKEYSON,     0x00000001,
        :AVAILABLE,       0x00000002,
        :HOTKEYACTIVE,    0x00000004,
        :CONFIRMHOTKEY,   0x00000008,
        :HOTKEYSOUND,     0x00000010,
        :INDICATOR,       0x00000020,
        :MODIFIERS,       0x00000040,
        :REPLACENUMBERS,  0x00000080,
        :LEFTBUTTONDOWN,  0x01000000,
        :RIGHTBUTTONDOWN, 0x02000000,
        :LEFTBUTTONSEL,   0x10000000,
        :RIGHTBUTTONSEL,  0x20000000,
        :MOUSEMODE,       0x80000000
    ]

    define_prefix(:MKF, MouseKeysFlag)
  end
end