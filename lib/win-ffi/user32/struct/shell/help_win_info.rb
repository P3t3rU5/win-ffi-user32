require 'win-ffi/user32/enum/window/function/show_window_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-taghelpwininfoa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-taghelpwininfow
    class HELPWININFO < FFIAdditions::Struct
      def wStructSize; end
      def wStructSize=(v) end
      def x; end
      def x=(v) end
      def y; end
      def y=(v) end
      def dx; end
      def dx=(v) end
      def dy; end
      def dy=(v) end
      def wMax; end
      def wMax=(v) end
      def rgchMember; end
      def rgchMember=(v) end

      layout wStructSize: :int,
             x:           :int,
             y:           :int,
             dx:          :int,
             dy:          :int,
             wMax:        ShowWindowFlag,
             rgchMember:  [:char, 2]

      def initialize
        super
        self.wStructSize = self.size
      end

      private :wStructSize, :wStructSize=
    end
  end
end