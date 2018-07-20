module WinFFI
  module User32
    # dwFlags for SetWinEventHook
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setwineventhook#parameters
    SetWinEventHookFlag = enum :set_win_event_hook_flag, [
        :OUTOFCONTEXT,   0x0000,
        :SKIPOWNTHREAD,  0x0001,
        :SKIPOWNPROCESS, 0x0002,
        :INCONTEXT,      0x0004
    ]

    define_prefix(:WINEVENT, SetWinEventHookFlag)
  end
end