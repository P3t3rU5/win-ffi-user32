module WinFFI
  module User32
    # Combo Box styles
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/combo-box-styles
    ComboBoxStyle = enum :combobox_style, [
        :SIMPLE,            0x0001,
        :DROPDOWN,          0x0002,
        :DROPDOWNLIST,      0x0003,
        :OWNERDRAWFIXED,    0x0010,
        :OWNERDRAWVARIABLE, 0x0020,
        :AUTOHSCROLL,       0x0040,
        :OEMCONVERT,        0x0080,
        :SORT,              0x0100,
        :HASSTRINGS,        0x0200,
        :NOINTEGRALHEIGHT,  0x0400,
        :DISABLENOSCROLL,   0x0800,
        :UPPERCASE,         0x2000,
        :LOWERCASE,         0x4000,
    ]
    define_prefix(:CBS, ComboBoxStyle)
  end
end