module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/wm-notifyformat#parameters
    WmNotifyFormatReturn = enum :wm_notify_format_return, [:ANSI,    1, :UNICODE, 2]

    define_prefix(:NFR, WmNotifyFormatReturn)
  end
end
