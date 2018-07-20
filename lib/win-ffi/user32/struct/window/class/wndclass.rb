require_relative '../../../typedef/hcursor'
require_relative '../../../function/window/proc'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633576
    class WNDCLASS < FFIAdditions::Struct
      def style; end
      def style=(v); end
      def lpfnWndProc; end
      def lpfnWndProc=(v); end
      def cbClsExtra; end
      def cbClsExtra=(v); end
      def cbWndExtra; end
      def cbWndExtra=(v); end
      def hInstance; end
      def hInstance=(v); end
      def hIcon; end
      def hIcon=(v); end
      def hCursor; end
      def hCursor=(v); end
      def hbrBackground; end
      def hbrBackground=(v); end
      def lpszMenuName; end
      def lpszMenuName=(v); end
      def lpszClassName; end
      def lpszClassName=(v); end
      def hIconSm; end
      def hIconSm=(v); end

      layout style:         :uint,
             lpfnWndProc:   WindowProc,
             cbClsExtra:    :int,
             cbWndExtra:    :int,
             hInstance:     :hinstance,
             hIcon:         :hicon,
             hCursor:       :hcursor,
             hbrBackground: :hbrush,
             lpszMenuName:  :pointer,
             lpszClassName: :pointer,
             hIconSm:       :pointer
    end
  end
end