module WinFFI
  module User32
    # return codes for WM_MENUCHAR
    # https://docs.microsoft.com/en-us/windows/desktop/menurc/wm-menuchar
    WmMenucharReturn = enum :wm_menuchar_return, [:IGNORE, 0, :CLOSE, 1, :EXECUTE, 2, :SELECT, 3]

    define_prefix(:MNC, WmMenucharReturn)
  end
end