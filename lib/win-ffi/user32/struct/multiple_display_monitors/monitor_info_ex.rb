require 'win-ffi/core/struct/rect'

require_relative '../../enum/multiple_display_monitors/monitor_info_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagmonitorinfoexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagmonitorinfoexw
    class MONITORINFOEX < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def rcMonitor; end
      def rcMonitor=(v); end
      def rcWork; end
      def rcWork=(v); end
      def dwFlags; end
      def dwFlags=(v); end
      def szDevice; end
      def szDevice=(v); end

          layout  cbSize:    :dword,
            rcMonitor: RECT,
            rcWork:    RECT,
            dwFlags:   MonitorInfoFlag,
            szDevice:  [:tchar, CCHDEVICENAME]

      def initialize
        super
        self[:cbSize] = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end