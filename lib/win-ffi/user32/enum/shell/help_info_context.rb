module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-taghelpinfo#members
    HelpInfoContext = enum :help_info_context, [:WINDOW, 0x0001, :MENUITEM, 0x0002]

    define_prefix(:HELPINFO, HelpInfoContext)
  end
end