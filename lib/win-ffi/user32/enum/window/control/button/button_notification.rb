require 'win-ffi/user32'

module WinFFI
  module User32
    # User Button Notification Codes
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ff485887(v=vs.85).aspx
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