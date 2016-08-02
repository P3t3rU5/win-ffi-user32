require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/aa376889(v=vs.85).aspx
    WmEndsessionParameter = enum :wm_endsession_parameter, [
        :CLOSEAPP, 0x00000001,
        :CRITICAL, 0x40000000,
        :LOGOFF,   0x80000000,
    ]

    define_prefix(:ENDSESSION, WmEndsessionParameter)
  end
end
