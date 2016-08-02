require 'win-ffi/user32'

module WinFFI
  module User32
    # Edit Control Styles
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775464(v=vs.85).aspx
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb774367(v=vs.85).aspx
    EditStyle = enum :edit_style, [
        :LEFT,        0x0000,
        :CENTER,      0x0001,
        :RIGHT,       0x0002,
        :MULTILINE,   0x0004,
        :UPPERCASE,   0x0008,
        :LOWERCASE,   0x0010,
        :PASSWORD,    0x0020,
        :AUTOVSCROLL, 0x0040,
        :AUTOHSCROLL, 0x0080,
        :NOHIDESEL,   0x0100,
        :OEMCONVERT,  0x0400,
        :READONLY,    0x0800,
        :WANTRETURN,  0x1000,
        :NUMBER,      0x2000,

        :SAVESEL,          0x00008000,
        :SUNKEN,           0x00004000,
        :DISABLENOSCROLL,  0x00002000,

        :SELECTIONBAR,     0x01000000,

        :NOOLEDRAGDROP,    0x00000008,

        :EX_NOCALLOLEINIT, 0x00000000, # Obsolete

        :VERTICAL, 0x00400000,
        :NOIME,    0x00080000,
        :SELFIME,  0x00040000,
    ]

    define_prefix(:ES, EditStyle)
  end
end