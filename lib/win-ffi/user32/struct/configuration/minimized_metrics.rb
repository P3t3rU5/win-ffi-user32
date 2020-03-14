require_relative '../../enum/configuration/arrange_window'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-minimizedmetrics
    class MINIMIZEDMETRICS < FFIAdditions::Struct
      attr_accessor :cbSize, :iWidth, :iHorzGap, :iVertGap, :iArrange

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