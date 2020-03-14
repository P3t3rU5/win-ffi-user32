require 'win-ffi/core/struct/rect'

require_relative '../../enum/multiple_display_monitors/monitor_info_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-monitorinfo
    class MONITORINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :rcMonitor,
                    :rcWork,
                    :dwFlags

      layout cbSize:    :dword,
             rcMonitor: RECT,
             rcWork:    RECT,
             dwFlags:   MonitorInfoFlag

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize=, :cbSize
    end
  end
end