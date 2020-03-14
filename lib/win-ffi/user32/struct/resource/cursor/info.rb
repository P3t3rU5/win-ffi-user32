require 'win-ffi/core/struct/point'

require_relative '../../../typedef/hcursor'

require_relative '../../../enum/resource/cursor/info_flag'

module WinFFI
  module User32
    # Information about the global cursor.
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-cursorinfo
    class CURSORINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :flags,
                    :hCursor,
                    :ptScreenPos,

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