require 'win-ffi/user32'

module WinFFI
  module User32
    # Combo Box Notification Codes
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ff485902(v=vs.85).aspx
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