require 'win-ffi/user32/function/window/message'

module WinFFI
  module User32
    class << self
      #define PostAppMessageA(idThread, wMsg, wParam, lParam) PostThreadMessageA((DWORD)idThread, wMsg, wParam, lParam)
      def PostAppMessage(idThread, wMsg, wParam, lParam)
        PostThreadMessage(idThread, wMsg, wParam, lParam)
      end
    end
  end
end