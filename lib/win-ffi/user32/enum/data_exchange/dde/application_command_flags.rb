require 'win-ffi/user32'

module WinFFI
  module User32
    # Application command flags
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648757(v=vs.85).aspx
    ApplicationCommandFlags = enum :application_command_flags, [
        :CLIENTONLY,  0x00000010,
        :FILTERINITS, 0x00000020,
        :MASK,        0x00000FF0,
    ]

    define_prefix(:APPCMD, ApplicationCommandFlags)
  end
end