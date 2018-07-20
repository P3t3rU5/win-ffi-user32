require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644958
    class MSG < FFIAdditions::Struct
      def hwnd; end
      def hwnd=(v); end
      def message; end
      def message=(v); end
      def wParam; end
      def wParam=(v); end
      def lParam; end
      def lParam=(v); end
      def time; end
      def time=(v); end
      def pt; end
      def pt=(v); end

      layout hwnd:    :hwnd,
             message: :uint,
             wParam:  :ulong,
             lParam:  :long,
             time:    :dword,
             pt:      POINT

      def to_s
        "<User32::MSG #{members.map { |m| "#{m} = #{self[m]}" }.join(', ')}>"
      end
    end
  end
end
