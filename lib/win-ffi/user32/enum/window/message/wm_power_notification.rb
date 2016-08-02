require 'win-ffi/user32'

module WinFFI
  module User32
    # wParam for WM_POWER window message and DRV_POWER driver notification
    # https://msdn.microsoft.com/en-us/library/windows/desktop/aa373245(v=vs.85).aspx
    # https://msdn.microsoft.com/en-us/library/windows/desktop/aa373247(v=vs.85).aspx
    WmPowerNotification = enum :wm_power_notification, [
        :OK,               1,
        :FAIL,            -1,
        :SUSPENDREQUEST,   1,
        :SUSPENDRESUME,    2,
        :CRITICALRESUME,   3,
    ]

    define_prefix(:PWR, WmPowerNotification)
  end
end