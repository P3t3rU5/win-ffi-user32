require 'win-ffi/user32/enum/window/function/show_window_flag'

module WinFFI
  module User32
    class HELPWININFO < FFIAdditions::Struct
      layout wStructSize:    :int,
             x:              :int,
             y:              :int,
             dx:             :int,
             dy:             :int,
             wMax: ShowWindowFlag,
             rgchMember:[:char, 2]

      def initialize
        super
        self[:wStructSize] = self.size
      end
    end
  end
end