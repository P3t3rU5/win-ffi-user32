module WinFFI
  module User32
    # SetWindowPos Flags
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633545(v=vs.85).aspx
    SetWindowPosFlag = enum :set_windows_pos_flag, [
        :NOSIZE,         0x0001,
        :NOMOVE,         0x0002,
        :NOZORDER,       0x0004,
        :NOREDRAW,       0x0008,
        :NOACTIVATE,     0x0010,
        :FRAMECHANGED,   0x0020,
        :SHOWWINDOW,     0x0040,
        :HIDEWINDOW,     0x0080,
        :NOCOPYBITS,     0x0100,
        :NOOWNERZORDER,  0x0200,
        :NOSENDCHANGING, 0x0400,
        :DRAWFRAME,      0x0020,
        :NOREPOSITION,   0x0200,
        :DEFERERASE,     0x2000,
        :ASYNCWINDOWPOS, 0x4000,
    ]

    define_prefix(:SWP, SetWindowPosFlag)
  end
end