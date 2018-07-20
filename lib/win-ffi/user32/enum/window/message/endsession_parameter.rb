module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/Shutdown/wm-endsession#parameters
    WmEndsessionParameter = enum :wm_endsession_parameter, [
        :CLOSEAPP, 0x00000001,
        :CRITICAL, 0x40000000,
        :LOGOFF,   0x80000000
    ]

    define_prefix(:ENDSESSION, WmEndsessionParameter)
  end
end
