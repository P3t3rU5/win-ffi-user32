require 'win-ffi/core/struct/rect'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagpaintstruct
    class PAINTSTRUCT < FFIAdditions::Struct
      def hdc; end
      def hdc=(v); end
      def fErase; end
      def fErase=(v); end
      def rcPaint; end
      def rcPaint=(v); end
      def fRestore; end
      def fRestore=(v); end
      def fIncUpdate; end
      def fIncUpdate=(v); end
      def rgbReserved; end
      def rgbReserved=(v); end

      layout hdc:         :hdc,
             fErase:      :bool,
             rcPaint:     RECT,
             fRestore:    :bool,
             fIncUpdate:  :bool,
             rgbReserved: [:byte, 32]
    end
  end
end