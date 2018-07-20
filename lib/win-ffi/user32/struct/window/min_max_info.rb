require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    # Struct pointed to by WM_GETMINMAXINFO lParam
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632605
    class MINMAXINFO < FFIAdditions::Struct
      def ptReserved; end
      def ptReserved=(v); end
      def ptMaxSize; end
      def ptMaxSize=(v); end
      def ptMaxPosition; end
      def ptMaxPosition=(v); end
      def ptMinTrackSize; end
      def ptMinTrackSize=(v); end
      def ptMaxTrackSize; end
      def ptMaxTrackSize=(v); end

      layout ptReserved:     POINT,
             ptMaxSize:      POINT,
             ptMaxPosition:  POINT,
             ptMinTrackSize: POINT,
             ptMaxTrackSize: POINT
    end
  end
end