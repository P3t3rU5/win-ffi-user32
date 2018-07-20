module WinFFI
  module User32
    # Window field offsets for GetWindowLong()
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644898
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633585
    WindowLongPtr = enum :window_long_ptr, [
      :WNDPROC,     -4,
      :HINSTANCE,   -6,
      :HWNDPARENT,  -8,
      :ID,         -12,
      :USERDATA,   -21,
    ]

    define_prefix(:GWLP, WindowLongPtr)
  end
end