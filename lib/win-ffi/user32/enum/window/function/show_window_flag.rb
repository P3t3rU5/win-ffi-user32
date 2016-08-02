require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633548(v=vs.85).aspx
    ShowWindowFlag = enum :show_window_flag, [
        :HIDE,            0,
        :SHOWNORMAL,      1,
        :NORMAL,          1,
        :SHOWMINIMIZED,   2,
        :SHOWMAXIMIZED,   3,
        :MAXIMIZE,        3,
        :SHOWNOACTIVATE,  4,
        :SHOW,            5,
        :MINIMIZE,        6,
        :SHOWMINNOACTIVE, 7,
        :SHOWNA,          8,
        :RESTORE,         9,
        :SHOWDEFAULT,    10,
        :FORCEMINIMIZE,  11,
        :MAX,            11
    ]

    define_prefix(:SW, ShowWindowFlag)
  end
end