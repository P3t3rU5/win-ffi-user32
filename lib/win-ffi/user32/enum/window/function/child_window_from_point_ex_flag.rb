require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632677(v=vs.85).aspx
    ChildWindowFromPointExFlag = enum :child_window_from_point_ex_flag, [
        :ALL,             0x0000,
        :SKIPINVISIBLE,   0x0001,
        :SKIPDISABLED,    0x0002,
        :SKIPTRANSPARENT, 0x0004
    ]

    define_prefix(:CWP, ChildWindowFromPointExFlag)
  end
end