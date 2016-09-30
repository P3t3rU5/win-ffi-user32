require 'win-ffi/user32/enum/multiple_display_monitors/monitor_info_flag'

require 'win-ffi/core/struct/rect'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd145065(v=vs.85).aspx
    class MONITORINFO < FFIAdditions::Struct
      layout cbSize:           :dword,
             rcMonitor:          RECT,
             rcWork:             RECT,
             dwFlags: MonitorInfoFlag
    end
  end
end