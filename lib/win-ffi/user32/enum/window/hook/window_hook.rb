module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/winmsg/about-hooks#hook-types
    WindowHook = enum :window_hook, [
        :MIN,            -1,
        :MSGFILTER,      -1,
        :JOURNALRECORD,   0,
        :JOURNALPLAYBACK, 1,
        :KEYBOARD,        2,
        :GETMESSAGE,      3,
        :CALLWNDPROC,     4,
        :CBT,             5,
        :SYSMSGFILTER,    6,
        :MOUSE,           7,
        :HARDWARE,        8,
        :DEBUG,           9,
        :SHELL,          10,
        :FOREGROUNDIDLE, 11,
        :CALLWNDPROCRET, 12,
        :KEYBOARD_LL,    13,
        :MOUSE_LL,       14,
        :MAX,            14,
        :MINHOOK,        -1,
        :MAXHOOK,        15
    ]

    define_prefix(:WH, WindowHook)
  end
end
