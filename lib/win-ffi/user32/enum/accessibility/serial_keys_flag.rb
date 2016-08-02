require 'win-ffi/user32'

module WinFFI
  module User32
    # flags for SERIALKEYS dwFlags field
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373635(v=vs.85).aspx
    SerialKeysFlag = enum :serial_keys_flag, [
        :SERIALKEYSON, 0x00000001,
        :AVAILABLE,    0x00000002,
        :INDICATOR,    0x00000004,
    ]

    define_prefix(:SERKF, SerialKeysFlag)
  end
end