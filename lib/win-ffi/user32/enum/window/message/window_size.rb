module WinFFI
  module User32
    # WM_SIZE message wParam values
    # https://docs.microsoft.com/en-us/windows/desktop/winmsg/wm-size#parameters
    WindowSize = enum :window_size, [
        # Obsolete constant names
        :NORMAL,     0,
        :ICONIC,     1,
        :FULLSCREEN, 2,
        :ZOOMSHOW,   3,
        :ZOOMHIDE,   4,

        :RESTORED,  0,
        :MINIMIZED, 1,
        :MAXIMIZED, 2,
        :MAXSHOW,   3,
        :MAXHIDE,   4
    ]

    define_prefix(:SIZE, WindowSize)
  end
end