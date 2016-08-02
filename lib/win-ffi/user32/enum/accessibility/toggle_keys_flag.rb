require 'win-ffi/user32'

module WinFFI
  module User32
    # TOGGLEKEYS dwFlags field
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373663(v=vs.85).aspx
    ToggleKeysFlag = enum :toggle_keys_flag, [
        :TOGGLEKEYSON,  0x00000001,
        :AVAILABLE,     0x00000002,
        :HOTKEYACTIVE,  0x00000004,
        :CONFIRMHOTKEY, 0x00000008,
        :HOTKEYSOUND,   0x00000010,
        :INDICATOR,     0x00000020,
    ]

    define_prefix(:TKF, ToggleKeysFlag)
  end
end