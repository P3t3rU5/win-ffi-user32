require 'win-ffi/user32'

module WinFFI
  module User32
    # Dialog Messages
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ff468826(v=vs.85).aspx
    DialogMessage = enum :dialog_message, [
        :GETDEFID,   0x400,
        :SETDEFID,   0x401,
        :REPOSITION, 0x402,
    ]

    define_prefix(:DM, DialogMessage)
  end
end