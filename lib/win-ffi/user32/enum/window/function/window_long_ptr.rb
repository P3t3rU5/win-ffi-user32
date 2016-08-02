require 'win-ffi/user32'

module WinFFI
  module User32
    # Window field offsets for GetWindowLong()
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644898(v=vs.85).aspx
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633585(v=vs.85).aspx
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