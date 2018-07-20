require 'win-ffi/core/struct/rect'

require_relative '../../../../constant/window'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagscrollbarinfo
    # Scrollbar information
    class SCROLLBARINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def rcScrollBar; end
      def rcScrollBar=(v); end
      def dxyLineButton; end
      def dxyLineButton=(v); end
      def xyThumbTop; end
      def xyThumbTop=(v); end
      def xyThumbBottom; end
      def xyThumbBottom=(v); end
      def reserved; end
      def reserved=(v); end
      def rgstate; end
      def rgstate=(v); end

          layout cbSize:        :dword,
             rcScrollBar:   RECT,
             dxyLineButton: :int,
             xyThumbTop:    :int,
             xyThumbBottom: :int,
             reserved:      :int,
             rgstate:       [:dword, CCHILDREN_SCROLLBAR + 1]

      def initialize
        self.cbSize = self.size
        super
      end

      private :cbSize, :cbSize=
    end
  end
end