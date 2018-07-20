require_relative '../../enum/configuration/arrange_window'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms724500
    class MINIMIZEDMETRICS < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def iWidth; end
      def iWidth=(v); end
      def iHorzGap; end
      def iHorzGap=(v); end
      def iVertGap; end
      def iVertGap=(v); end
      def iArrange; end
      def iArrange=(v); end

      layout cbSize:   :uint,
             iWidth:   :int,
             iHorzGap: :int,
             iVertGap: :int,
             iArrange: ArrangeWindow

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end