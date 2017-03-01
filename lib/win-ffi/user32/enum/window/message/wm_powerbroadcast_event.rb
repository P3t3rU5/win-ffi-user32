require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/aa373247(v=vs.85).aspx
    buffer = [
        :APMQUERYSUSPEND,       0x0000,
        :APMQUERYSTANDBY,       0x0001,
        :APMQUERYSUSPENDFAILED, 0x0002,
        :APMQUERYSTANDBYFAILED, 0x0003,
        :APMSUSPEND,            0x0004,
        :APMSTANDBY,            0x0005,
        :APMRESUMECRITICAL,     0x0006,
        :APMRESUMESUSPEND,      0x0007,
        :APMRESUMESTANDBY,      0x0008,
        :APMBATTERYLOW,         0x0009,
        :APMPOWERSTATUSCHANGE,  0x000A,
        :APMOEMEVENT,           0x000B,
        :APMRESUMEAUTOMATIC,    0x0012,

    ]

    buffer += [:POWERSETTINGCHANGE, 0x8013] if WINDOWS_VERSION >= :vista

    PBTF_APMRESUMEFROMFAILURE = 0x00000001

    WmPowerbroadcastEvent = enum :wm_powerbroadcast_event, buffer
    define_prefix(:PBT, WmPowerbroadcastEvent)
  end
end