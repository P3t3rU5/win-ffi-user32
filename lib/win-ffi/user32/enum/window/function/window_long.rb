module WinFFI
  module User32
    # Window field offsets for GetWindowLong()
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633584
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633591
    WindowLong = enum :window_long, [
      :WNDPROC,     -4,
      :HINSTANCE,   -6,
      :HWNDPARENT,  -8,
      :ID,         -12,
      :STYLE,      -16,
      :EXSTYLE,    -20,
      :USERDATA,   -21
    ]

    define_prefix(:GWL, WindowLong)
  end
end