require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644977(v=vs.85).aspx
    CBTHookCode = enum :cbt_hook_code, [
        :MOVESIZE,     0,
        :MINMAX,       1,
        :QS,           2,
        :CREATEWND,    3,
        :DESTROYWND,   4,
        :ACTIVATE,     5,
        :CLICKSKIPPED, 6,
        :KEYSKIPPED,   7,
        :SYSCOMMAND,   8,
        :SETFOCUS,     9
    ]

    define_prefix(:HCBT, CBTHookCode)
  end
end