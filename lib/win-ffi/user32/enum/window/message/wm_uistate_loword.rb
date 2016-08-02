require 'win-ffi/user32'

module WinFFI
  module User32
    # LOWORD(wParam) values in WM_*UISTATE*
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646342(v=vs.85).aspx
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646361(v=vs.85).aspx
    WmUistateLoword = enum :wm_uistate_loword, [
        :SET,        1,
        :CLEAR,      2,
        :INITIALIZE, 3,
    ]

    define_prefix(:UIS, WmUistateLoword)
  end
end
