require 'win-ffi/user32'

module WinFFI
  module User32
    # GetWindow() Constants
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633515(v=vs.85).aspx
    GetWindowFlag = enum :get_window_flag, [
        :HWNDFIRST,    0,
        :HWNDLAST,     1,
        :HWNDNEXT,     2,
        :HWNDPREV,     3,
        :OWNER,        4,
        :CHILD,        5,
        :ENABLEDPOPUP, 6,
        :MAX,          6
    ]

    define_prefix(:GW, GetWindowFlag)
  end
end
