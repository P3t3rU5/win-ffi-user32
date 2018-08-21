module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagtouchinput#remarks
      # Touch input flag values (TOUCHINPUT.dwFlags)
      TouchEventFlag = enum :touch_event_flag, [
          :MOVE,       0x0001,
          :DOWN,       0x0002,
          :UP,         0x0004,
          :INRANGE,    0x0008,
          :PRIMARY,    0x0010,
          :NOCOALESCE, 0x0020,
          :PEN,        0x0040,
          :PALM,       0x0080,
      ]

      define_prefix(:TOUCHEVENTF, TouchEventFlag)
    end
  end
end