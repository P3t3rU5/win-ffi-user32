module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646260
    buffer = [
        :MOVE,        0x0001,
        :LEFTDOWN,    0x0002,
        :LEFTUP,      0x0004,
        :RIGHTDOWN,   0x0008,
        :RIGHTUP,     0x0010,
        :MIDDLEDOWN,  0x0020,
        :MIDDLEUP,    0x0040,
        :XDOWN,       0x0080,
        :XUP,         0x0100,
        :WHEEL,       0x0800,

        :VIRTUALDESK, 0x4000,
        :ABSOLUTE,    0x8000
    ]

    buffer += [:HWHEEL, 0x01000, :MOVE_NOCOALESCE, 0x02000] if WINDOWS_VERSION >= :vista

    MouseEventFlag = enum :mouse_event_flag, buffer

    define_prefix(:MOUSEEVENTF, MouseEventFlag)
  end
end