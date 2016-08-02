require 'win-ffi/user32'

module WinFFI
  module User32
    # flags for HIGHCONTRAST dwFlags field
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd318112(v=vs.85).aspx
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