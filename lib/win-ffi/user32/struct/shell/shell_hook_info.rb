require 'win-ffi/core/struct/rect'

module WinFFI
  module User32

    class SHELLHOOKINFO < FFIAdditions::Struct
      def hwnd; end
      def hwnd=(v) end
      def rc; end
      def rc=(v) end

      layout hwnd: :hwnd,
             rc:    RECT
    end
  end
end