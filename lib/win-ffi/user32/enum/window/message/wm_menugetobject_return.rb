require 'win-ffi/user32'

module WinFFI
  module User32
    # WM_MENUGETOBJECT return values
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms647607%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    WmMenugetobjectReturn = enum :wm_menugetobject_return, [
        :NOINTERFACE, 0x00000000,
        :NOERROR,     0x00000001,
    ]

    define_prefix(:MNGO, WmMenugetobjectReturn)
  end
end