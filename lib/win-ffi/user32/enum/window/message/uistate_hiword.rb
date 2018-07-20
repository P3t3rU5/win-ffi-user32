module WinFFI
  module User32
    # HIWORD(wParam) values in WM_*UISTATE*
    # https://docs.microsoft.com/en-us/windows/desktop/menurc/wm-changeuistate#parameters
    # https://docs.microsoft.com/en-us/windows/desktop/menurc/wm-queryuistate#return-value
    # https://docs.microsoft.com/en-us/windows/desktop/menurc/wm-updateuistate#parameters
    buffer = [:HIDEFOCUS, 0x1, :HIDEACCEL, 0x2]

    buffer += [:ACTIVE, 0x4] if WINDOWS_VERSION >= :xp

    WmUistateHiword = enum :wm_uistate_hiword, buffer

    define_prefix(:UISF, WmUistateHiword)
  end
end
