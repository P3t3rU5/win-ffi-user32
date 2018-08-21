module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646271
    KeyboardEventFlag = enum :keyboard_event_flag, [
        :EXTENDEDKEY, 0x0001,
        :KEYUP,       0x0002,
        :UNICODE,     0x0004,
        :SCANCODE,    0x0008
    ]

    define_prefix(:KEYEVENTF, KeyboardEventFlag)
  end
end