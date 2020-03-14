require 'win-ffi/user32/enum/window/control/scrollbar/info_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagscrollinfo
    class SCROLLINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :fMask,
                    :nMin,
                    :nMax,
                    :nPage,
                    :nPos,
                    :nTrackPos

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