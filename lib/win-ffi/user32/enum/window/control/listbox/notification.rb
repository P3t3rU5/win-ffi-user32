module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-list-box-control-reference-notifications
    ListBoxNotification = enum :listbox_notification, [
        :ERRSPACE,  -2,
        :SELCHANGE,  1,
        :DBLCLK,     2,
        :SELCANCEL,  3,
        :SETFOCUS,   4,
        :KILLFOCUS,  5,
    ]

    define_prefix(:LBN, ListBoxNotification)
  end
end