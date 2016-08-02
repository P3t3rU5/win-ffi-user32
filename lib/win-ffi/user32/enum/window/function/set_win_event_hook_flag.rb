require 'win-ffi/user32'

module WinFFI
  module User32
    # dwFlags for SetWinEventHook
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373640(v=vs.85).aspx
    SetWinEventHookFlag = enum :set_win_event_hook_flag, [
        :OUTOFCONTEXT,   0x0000,
        :SKIPOWNTHREAD,  0x0001,
        :SKIPOWNPROCESS, 0x0002,
        :INCONTEXT,      0x0004,
    ]

    define_prefix(:WINEVENT, SetWinEventHookFlag)
  end
end