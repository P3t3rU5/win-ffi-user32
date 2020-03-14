require 'win-ffi/core/struct/rect'

require_relative '../../enum/window/gui_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-guithreadinfo
    class GUITHREADINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :flags,
                    :hwndActive,
                    :hwndFocus,
                    :hwndCapture,
                    :hwndMenuOwner,
                    :hwndMoveSize,
                    :hwndCaret,
                    :rcCaret

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
