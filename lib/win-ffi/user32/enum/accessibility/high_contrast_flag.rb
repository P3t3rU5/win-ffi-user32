module WinFFI
  module User32
    # flags for HIGHCONTRAST dwFlags field
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-taghighcontrasta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-taghighcontrastw
    HighContrastFlag = enum :high_constrast_flag, [
        :HIGHCONTRASTON,  0x00000001,
        :AVAILABLE,       0x00000002,
        :HOTKEYACTIVE,    0x00000004,
        :CONFIRMHOTKEY,   0x00000008,
        :HOTKEYSOUND,     0x00000010,
        :INDICATOR,       0x00000020,
        :HOTKEYAVAILABLE, 0x00000040,
        :LOGONDESKTOP,    0x00000100,
        :DEFAULTDESKTOP,  0x00000200
    ]

    define_prefix(:HCF, HighContrastFlag)
  end
end