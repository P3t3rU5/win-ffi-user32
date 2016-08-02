require 'win-ffi/user32'

module WinFFI
  module User32
    # return codes for WM_MENUCHAR
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646349%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    WmMenucharReturn = enum :wm_menuchar_return, [
        :IGNORE,  0,
        :CLOSE,   1,
        :EXECUTE, 2,
        :SELECT,  3,
    ]

    define_prefix(:MNC, WmMenucharReturn)
  end
end