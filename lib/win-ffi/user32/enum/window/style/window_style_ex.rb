require 'win-ffi/user32'

module WinFFI
  module User32
    # Extended Window Styles
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ff700543(v=vs.85).aspx
    buffer = [
        :DLGMODALFRAME,    0x00000001,
        :NOPARENTNOTIFY,   0x00000004,
        :TOPMOST,          0x00000008,
        :ACCEPTFILES,      0x00000010,
        :TRANSPARENT,      0x00000020,
        :MDICHILD,         0x00000040,
        :TOOLWINDOW,       0x00000080,
        :WINDOWEDGE,       0x00000100,
        :CLIENTEDGE,       0x00000200,
        :CONTEXTHELP,      0x00000400,

        :RIGHT,            0x00001000,
        :LEFT,             0x00000000,
        :RTLREADING,       0x00002000,
        :LTRREADING,       0x00000000,
        :LEFTSCROLLBAR,    0x00004000,
        :RIGHTSCROLLBAR,   0x00000000,

        :CONTROLPARENT,    0x00010000,
        :STATICEDGE,       0x00020000,
        :APPWINDOW,        0x00040000,

        :OVERLAPPEDWINDOW, 0x00000300,
        :PALETTEWINDOW,    0x00000188,

        :LAYERED,          0x00080000,
        :NOINHERITLAYOUT,  0x00100000,

        :LAYOUTRTL,        0x00400000,

        :NOACTIVATE,       0x08000000,
    ]

    if WindowsVersion >= :xp
      buffer += [:COMPOSITED,       0x02000000,]
      buffer += [:NOREDIRECTIONBITMAP, 0x00200000] if WindowsVersion >= 8
    end

    WindowStyleExtended = enum :window_style_extended, buffer

    define_prefix(:WS_EX, WindowStyleExtended)
  end
end