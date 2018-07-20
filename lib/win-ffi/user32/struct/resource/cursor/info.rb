require 'win-ffi/core/struct/point'

require_relative '../../../typedef/hcursor'

require_relative '../../../enum/resource/cursor/cursor_info_flag'

module WinFFI
  module User32
    # Information about the global cursor.
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagcursorinfo
    class CURSORINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def flags; end
      def flags=(v) end
      def hCursor; end
      def hCursor=(v) end
      def ptScreenPos; end
      def ptScreenPos=(v) end

      layout cbSize:      :dword,
             flags:       CursorInfoFlag,
             hCursor:     :hcursor,
             ptScreenPos: POINT

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end