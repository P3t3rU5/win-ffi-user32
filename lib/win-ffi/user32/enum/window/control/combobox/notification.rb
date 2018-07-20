module WinFFI
  module User32
    # Combo Box Notification Codes
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-combobox-control-reference-notifications
    ComboBoxNotification = enum :combobox_notification, [
        :ERRSPACE,     -1,
        :SELCHANGE,     1,
        :DBLCLK,        2,
        :SETFOCUS,      3,
        :KILLFOCUS,     4,
        :EDITCHANGE,    5,
        :EDITUPDATE,    6,
        :DROPDOWN,      7,
        :CLOSEUP,       8,
        :SELENDOK,      9,
        :SELENDCANCEL, 10,
    ]

    define_prefix(:CBN, ComboBoxNotification)
  end
end