module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagdrawtextparams
    class DRAWTEXTPARAMS < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def iTabLength; end
      def iTabLength=(v); end
      def iLeftMargin; end
      def iLeftMargin=(v); end
      def iRightMargin; end
      def iRightMargin=(v); end
      def uiLengthDrawn; end
      def uiLengthDrawn=(v); end

      layout cbSize:        :uint,
             iTabLength:    :int,
             iLeftMargin:   :int,
             iRightMargin:  :int,
             uiLengthDrawn: :uint

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end