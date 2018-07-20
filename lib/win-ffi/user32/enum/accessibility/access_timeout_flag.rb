module WinFFI
  module User32
    # ACCESSTIMEOUT dwFlags field
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagaccesstimeout
    AccessTimeoutFlag = enum :access_timeout_flag, [:TIMEOUTON,     0x00000001, :ONOFFFEEDBACK, 0x00000002]

    define_prefix(:ATF, AccessTimeoutFlag)
  end
end