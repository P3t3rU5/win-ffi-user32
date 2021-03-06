module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # codes passed in WPARAM for WM_WTSSESSION_CHANGE
      # https://docs.microsoft.com/en-us/windows/desktop/TermServ/wm-wtssession-change#parameters
      WmWtssessionChangeCode = enum :wm_wtssession_change_code, [
          :CONSOLE_CONNECT,        0x1,
          :CONSOLE_DISCONNECT,     0x2,
          :REMOTE_CONNECT,         0x3,
          :REMOTE_DISCONNECT,      0x4,
          :SESSION_LOGON,          0x5,
          :SESSION_LOGOFF,         0x6,
          :SESSION_LOCK,           0x7,
          :SESSION_UNLOCK,         0x8,
          :SESSION_REMOTE_CONTROL, 0x9,
          :SESSION_CREATE,         0xA,
          :SESSION_TERMINATE,      0xB
      ]

      define_prefix(:WTS, WmWtssessionChangeCode)
    end
  end
end