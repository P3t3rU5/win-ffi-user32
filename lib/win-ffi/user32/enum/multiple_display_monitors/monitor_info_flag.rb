module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagmonitorinfo#members
    MonitorInfoFlag = enum :monitor_info_flag, [:PRIMARY, 0x00000001]

    define_prefix(:MONITORINFOF, MonitorInfoFlag)
  end
end