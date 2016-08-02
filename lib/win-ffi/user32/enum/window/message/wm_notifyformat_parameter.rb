require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775584(v=vs.85).aspx
    WmNotifyformatParameter = enum :wm_notifyformat_parameter, [
        :QUERY,   3,
        :REQUERY, 4,
    ]

    define_prefix(:NF, WmNotifyformatParameter)
  end
end