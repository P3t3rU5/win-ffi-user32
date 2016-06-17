require 'win-ffi/user32'

module WinFFI
  module User32
    CBTHookCode = enum :cbt_hook_code, [
        :MOVESIZE,
        :MINMAX,
        :QS,
        :CREATEWND,
        :DESTROYWND,
        :ACTIVATE,
        :CLICKSKIPPED,
        :KEYSKIPPED,
        :SYSCOMMAND,
        :SETFOCUS
    ]

    define_prefix(:HCBT, CBTHookCode)
  end
end