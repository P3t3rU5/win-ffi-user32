require_relative '../../../typedef/hcursor'
require_relative '../../../enum/window/class/style'
require_relative '../../../function/window/proc'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633577
    class WNDCLASSEX < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
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

      layout cbSize:        :uint,
             style:         WindowClassStyle,
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

      def initialize(class_name)
        super()
        @class_name = class_name
        self.cbSize = self.size
        self.lpszClassName = FFI::MemoryPointer.from_string(@class_name)
        @atom = nil
      end

      def atom
        @atom = User32.RegisterClassEx(self) unless @atom
        raise 'RegisterClassEx Error' if @atom == 0
        @atom
      end

      private :cbSize, :cbSize=
    end
  end
end

require_relative '../../../function/window/class'