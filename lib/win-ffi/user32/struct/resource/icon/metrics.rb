require 'win-ffi/gdi32/struct/font/log_font'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagiconmetricsa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagiconmetricsw
    class ICONMETRICS < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def iHorzSpacing; end
      def iHorzSpacing=(v) end
      def iVertSpacing; end
      def iVertSpacing=(v) end
      def iTitleWrap; end
      def iTitleWrap=(v) end
      def lfFont; end
      def lfFont=(v) end

      layout cbSize:       :uint,
             iHorzSpacing: :int,
             iVertSpacing: :int,
             iTitleWrap:   :int,
             lfFont:       Gdi32::LOGFONT

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end
