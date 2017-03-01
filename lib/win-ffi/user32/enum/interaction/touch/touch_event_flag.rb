require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd317334(v=vs.85).aspx
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