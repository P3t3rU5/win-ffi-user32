module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/wm-notifyformat#parameters
    WmNotifyformatParameter = enum :wm_notifyformat_parameter, [:QUERY, 3, :REQUERY, 4]

    define_prefix(:NF, WmNotifyformatParameter)
  end
end