require 'win-ffi/user32'

module WinFFI
  module User32
    # STICKYKEYS dwFlags field
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373652(v=vs.85).aspx
    StickyKeysFlag = enum :sticky_keys_flag, [
        :STICKYKEYSON,    0x00000001,
        :AVAILABLE,       0x00000002,
        :HOTKEYACTIVE,    0x00000004,
        :CONFIRMHOTKEY,   0x00000008,
        :HOTKEYSOUND,     0x00000010,
        :INDICATOR,       0x00000020,
        :AUDIBLEFEEDBACK, 0x00000040,
        :TRISTATE,        0x00000080,
        :TWOKEYSOFF,      0x00000100,
        :LALTLATCHED,     0x10000000,
        :LCTLLATCHED,     0x04000000,
        :LSHIFTLATCHED,   0x01000000,
        :RALTLATCHED,     0x20000000,
        :RCTLLATCHED,     0x08000000,
        :RSHIFTLATCHED,   0x02000000,
        :LWINLATCHED,     0x40000000,
        :RWINLATCHED,     0x80000000,
        :LALTLOCKED,      0x00100000,
        :LCTLLOCKED,      0x00040000,
        :LSHIFTLOCKED,    0x00010000,
        :RALTLOCKED,      0x00200000,
        :RCTLLOCKED,      0x00080000,
        :RSHIFTLOCKED,    0x00020000,
        :LWINLOCKED,      0x00400000,
        :RWINLOCKED,      0x00800000,
    ]

    define_prefix(:SKF, StickyKeysFlag)
  end
end