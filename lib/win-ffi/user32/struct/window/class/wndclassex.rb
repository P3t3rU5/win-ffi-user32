require_relative '../../../typedef/hcursor'
require_relative '../../../enum/window/class/style'
require_relative '../../../function/window/proc'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-wndclassexa
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-wndclassexw
    class WNDCLASSEX < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :style,
                    :lpfnWndProc,
                    :cbClsExtra,
                    :cbWndExtra,
                    :hInstance,
                    :hIcon,
                    :hCursor,
                    :hbrBackground,
                    :lpszMenuName,
                    :lpszClassName,
                    :hIconSm

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

      private :cbSize=
    end
  end
end

require_relative '../../../function/window/class'