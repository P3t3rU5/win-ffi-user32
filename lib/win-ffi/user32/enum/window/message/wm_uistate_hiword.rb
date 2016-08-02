require 'win-ffi/user32'

module WinFFI
  module User32
    # HIWORD(wParam) values in WM_*UISTATE*
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646342(v=vs.85).aspx
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646355(v=vs.85).aspx
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646361(v=vs.85).aspx
    buffer = [
        :HIDEFOCUS, 0x1,
        :HIDEACCEL, 0x2,
    ]

    buffer += [:ACTIVE, 0x4] if WindowsVersion >= :xp

    WmUistateHiword = enum :wm_uistate_hiword, buffer

    define_prefix(:UIS, WmUistateHiword)
  end
end
