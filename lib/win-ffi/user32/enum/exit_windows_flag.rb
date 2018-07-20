module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-exitwindowsex#parameters
    buffer = [
        :LOGOFF,          0x00000000,
        :SHUTDOWN,        0x00000001,
        :REBOOT,          0x00000002,
        :FORCE,           0x00000004,
        :POWEROFF,        0x00000008,
        :FORCEIFHUNG,     0x00000010,
        :QUICKRESOLVE,    0x00000020,
        :HYBRID_SHUTDOWN, 0x00400000,
        :BOOTOPTIONS,     0x01000000
    ]

    buffer += [:RESTARTAPPS, 0x00000040] if WINDOWS_VERSION >= :vista

    ExitWindowsFlag = enum :exit_windows_flag, buffer

    define_prefix(:EWX, ExitWindowsFlag)
  end
end