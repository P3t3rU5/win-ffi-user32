require 'win-ffi/user32/enum/window/function/show_window_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-helpwininfoa
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-helpwininfow
    class HELPWININFO < FFIAdditions::Struct
      attr_accessor :wStructSize,
                    :x,
                    :y,
                    :dx,
                    :dy,
                    :wMax,
                    :rgchMember

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