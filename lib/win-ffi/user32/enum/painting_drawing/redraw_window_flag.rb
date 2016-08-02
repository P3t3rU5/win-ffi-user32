require 'win-ffi/user32'

module WinFFI
  module User32
    # RedrawWindow() flags
    # https://msdn.microsoft.com/en-us/library/dd162911(v=vs.85).aspx
    RedrawWindowFlag = enum :redraw_window_flag, [
        :INVALIDATE,      0x0001,
        :INTERNALPAINT,   0x0002,
        :ERASE,           0x0004,
        :VALIDATE,        0x0008,
        :NOINTERNALPAINT, 0x0010,
        :NOERASE,         0x0020,
        :NOCHILDREN,      0x0040,
        :ALLCHILDREN,     0x0080,
        :UPDATENOW,       0x0100,
        :ERASENOW,        0x0200,
        :FRAME,           0x0400,
        :NOFRAME,         0x0800
    ]

    define_prefix(:RDW, RedrawWindowFlag)
  end
end