require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ff486030(v=vs.85).aspx
    StaticNotification = enum :static_notification, [
        :CLICKED, 0,
        :DBLCLK,  1,
        :ENABLE,  2,
        :DISABLE, 3
    ]

    define_prefix(:STN, StaticNotification)
  end
end