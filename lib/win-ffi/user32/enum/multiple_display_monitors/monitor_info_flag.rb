require 'win-ffi/user32'

module WinFFI
  module User32
    MonitorInfoFlag = enum :monitor_info_flag, [:PRIMARY, 0x00000001]

    define_prefix(:MONITORINFOF, MonitorInfoFlag)
  end
end