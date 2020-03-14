require 'win-ffi/core/struct/rect'

require_relative '../../../../constant/window'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-scrollbarinfo
    # Scrollbar information
    class SCROLLBARINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :rcScrollBar,
                    :dxyLineButton,
                    :xyThumbTop,
                    :xyThumbBottom,
                    :reserved,
                    :rgstate

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