module WinFFI
  module User32
    # LOWORD(wParam) values in WM_*UISTATE*
    # https://docs.microsoft.com/en-us/windows/desktop/menurc/wm-changeuistate#parameters
    # https://docs.microsoft.com/en-us/windows/desktop/menurc/wm-updateuistate#parameters
    WmUistateLoword = enum :wm_uistate_loword, [:SET, 1, :CLEAR, 2, :INITIALIZE, 3]

    define_prefix(:UIS, WmUistateLoword)
  end
end
