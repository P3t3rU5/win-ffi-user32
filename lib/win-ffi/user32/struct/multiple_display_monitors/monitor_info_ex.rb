require 'win-ffi/user32'
require 'win-ffi/gdi32/constant'

require 'win-ffi/user32/enum/multiple_display_monitors/monitor_info_flag'

require 'win-ffi/core/struct/rect'

module WinFFI
  module User32
    class MONITORINFOEX < FFIAdditions::Struct
    layout  cbSize:                          :dword,
            rcMonitor:                         RECT,
            rcWork:                            RECT,
            dwFlags:                MonitorInfoFlag,
            szDevice: [:tchar, Gdi32::CCHDEVICENAME]

      def initialize
        super
        self[:cbSize] = self.size
      end
    end
  end
end