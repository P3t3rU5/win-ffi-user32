require 'win-ffi/user32'

module WinFFI
  module User32
    # System Alerts (indexChild of system ALERT notification)
    AlertSystem = enum :alert_system, [
        :INFORMATIONAL, 1,
        :WARNING,       2,
        :ERROR,         3,
        :QUERY,         4,
        :CRITICAL,      5,
    ]

    CALERT_SYSTEM = 6

    define_prefix(:ALERT_SYSTEM, AlertSystem)
  end
end