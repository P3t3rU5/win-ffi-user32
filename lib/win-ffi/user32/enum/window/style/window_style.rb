require 'win-ffi/user32'

module WinFFI
  module User32
    # Window Styles
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632600(v=vs.85).aspx
    WindowStyle = enum :window_style, [
        :OVERLAPPED,       0x00000000,
        :POPUP,            0x80000000,
        :CHILD,            0x40000000,
        :MINIMIZE,         0x20000000,
        :VISIBLE,          0x10000000,
        :DISABLED,         0x08000000,
        :CLIPSIBLINGS,     0x04000000,
        :CLIPCHILDREN,     0x02000000,
        :MAXIMIZE,         0x01000000,
        :CAPTION,          0x00C00000,
        :BORDER,           0x00800000,
        :DLGFRAME,         0x00400000,
        :VSCROLL,          0x00200000,
        :HSCROLL,          0x00100000,
        :SYSMENU,          0x00080000,
        :THICKFRAME,       0x00040000,
        :GROUP,            0x00020000,
        :TABSTOP,          0x00010000,
        :MINIMIZEBOX,      0x00020000,
        :MAXIMIZEBOX,      0x00010000,
        :TILED,            0x00000000,
        :ICONIC,           0x20000000,
        :SIZEBOX,          0x00040000,
        :TILEDWINDOW,      0x00CF0000,
        :OVERLAPPEDWINDOW, 0x00CF0000,
        :POPUPWINDOW,      0x80880000,
        :CHILDWINDOW,      0x40000000,
    ]

    define_prefix(:WS, WindowStyle)
  end
end