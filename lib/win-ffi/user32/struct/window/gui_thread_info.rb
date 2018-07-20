require 'win-ffi/core/struct/rect'

require_relative '../../enum/window/gui_flag'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632604(v=vs.85).aspx
    class GUITHREADINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def flags; end
      def flags=(v); end
      def hwndActive; end
      def hwndActive=(v); end
      def hwndFocus; end
      def hwndFocus=(v); end
      def hwndCapture; end
      def hwndCapture=(v); end
      def hwndMenuOwner; end
      def hwndMenuOwner=(v); end
      def hwndMoveSize; end
      def hwndMoveSize=(v); end
      def hwndCaret; end
      def hwndCaret=(v); end
      def rcCaret; end
      def rcCaret=(v); end

      layout cbSize:        :dword,
             flags:         GUIFlag,
             hwndActive:    :hwnd,
             hwndFocus:     :hwnd,
             hwndCapture:   :hwnd,
             hwndMenuOwner: :hwnd,
             hwndMoveSize:  :hwnd,
             hwndCaret:     :hwnd,
             rcCaret:       RECT

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end
