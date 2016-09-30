require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb773313(v=vs.85).aspx
    HelpInfoContext = enum :help_info_context, [
        :WINDOW,   0x0001,
        :MENUITEM, 0x0002
    ]
    define_prefix(:HELPINFO, HelpInfoContext)
  end
end