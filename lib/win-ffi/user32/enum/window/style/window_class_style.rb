require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ff729176(v=vs.85).aspx
    buffer = [
        :VREDRAW,         0x0001,
        :HREDRAW,         0x0002,
        :DBLCLKS,         0x0008,
        :OWNDC,           0x0020,
        :CLASSDC,         0x0040,
        :PARENTDC,        0x0080,
        :NOCLOSE,         0x0200,
        :SAVEBITS,        0x0800,
        :BYTEALIGNCLIENT, 0x1000,
        :BYTEALIGNWINDOW, 0x2000,
        :GLOBALCLASS,     0x4000,
        :IME,         0x00010000
    ]

    buffer += [:DROPSHADOW, 0x00020000] if WindowsVersion >= :xp

    WindowClassStyle = enum :window_class_style, buffer

    define_prefix(:CS, WindowClassStyle)
  end
end