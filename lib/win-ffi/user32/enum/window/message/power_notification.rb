module WinFFI
  module User32
    # wParam for WM_POWER window message and DRV_POWER driver notification
    # https://docs.microsoft.com/en-us/windows/desktop/Power/wm-power
    # https://docs.microsoft.com/en-us/windows/desktop/Power/wm-powerbroadcast
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