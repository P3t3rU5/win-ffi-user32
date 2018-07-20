require 'win-ffi/user32/enum/window/control/scrollbar/info_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagscrollinfo
    class SCROLLINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def fMask; end
      def fMask=(v); end
      def nMin; end
      def nMin=(v); end
      def nMax; end
      def nMax=(v); end
      def nPage; end
      def nPage=(v); end
      def nPos; end
      def nPos=(v); end
      def nTrackPos; end
      def nTrackPos=(v); end

      layout cbSize:    :uint,
             fMask:     ScrollbarInfoFlag,
             nMin:      :int,
             nMax:      :int,
             nPage:     :uint,
             nPos:      :int,
             nTrackPos: :int

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end