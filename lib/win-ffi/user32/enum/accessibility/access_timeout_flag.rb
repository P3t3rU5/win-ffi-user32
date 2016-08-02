require 'win-ffi/user32'

module WinFFI
  module User32
    # ACCESSTIMEOUT dwFlags field
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd317982(v=vs.85).aspx
    AccessTimeoutFlag = enum :access_timeout_flag, [
        :TIMEOUTON,     0x00000001,
        :ONOFFFEEDBACK, 0x00000002
    ]

    define_prefix(:ATF, AccessTimeoutFlag)
  end
end