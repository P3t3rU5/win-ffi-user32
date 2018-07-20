module WinFFI
  module User32
    # WM_MENUGETOBJECT return values
    # https://docs.microsoft.com/en-us/windows/desktop/menurc/wm-menugetobject
    WmMenugetobjectReturn = enum :wm_menugetobject_return, [:NOINTERFACE, 0x00000000, :NOERROR, 0x00000001]

    define_prefix(:MNGO, WmMenugetobjectReturn)
  end
end