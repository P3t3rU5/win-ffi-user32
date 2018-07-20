module WinFFI
  module User32
    # FILTERKEYS dwFlags field
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagfilterkeys
    FilterKeysFlag = enum :filter_keys_flag, [
        :FILTERKEYSON,  0x00000001,
        :AVAILABLE,     0x00000002,
        :HOTKEYACTIVE,  0x00000004,
        :CONFIRMHOTKEY, 0x00000008,
        :HOTKEYSOUND,   0x00000010,
        :INDICATOR,     0x00000020,
        :CLICKON,       0x00000040
    ]

    define_prefix(:FKF, FilterKeysFlag)
  end
end