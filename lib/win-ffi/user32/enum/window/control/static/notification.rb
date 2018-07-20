module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-static-control-reference-notifications
    StaticNotification = enum :static_notification, [:CLICKED, 0, :DBLCLK, 1, :ENABLE, 2, :DISABLE, 3]

    define_prefix(:STN, StaticNotification)
  end
end