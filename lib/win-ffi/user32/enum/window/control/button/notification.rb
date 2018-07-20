module WinFFI
  module User32
    # User Button Notification Codes
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-button-control-reference-notifications
    ButtonNotification = enum :button_notification, [
        :CLICKED,       0,
        :PAINT,         1,
        :HILITE,        2,
        :PUSHED,        2,
        :UNHILITE,      3,
        :UNPUSHED,      3,
        :DISABLE,       4,
        :DBLCLK,        5,
        :DOUBLECLICKED, 5,
        :SETFOCUS,      6,
        :KILLFOCUS,     7
    ]

    define_prefix(:BN, ButtonNotification)
  end
end