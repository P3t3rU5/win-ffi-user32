require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775584(v=vs.85).aspx
    WmNotifyformatReturn = enum :wm_notifyformat_return, [
        :ANSI,    1,
        :UNICODE, 2,
    ]

    define_prefix(:NFR, WmNotifyformatReturn)
  end
end
