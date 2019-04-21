require_relative '../../enum/window/return/appcommand_return'
require 'win-ffi/core/macro/util'

module WinFFI
  module User32
    class << self
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646247
      # define GET_APPCOMMAND_LPARAM(lParam) ((short)(HIWORD(lParam) & ~FAPPCOMMAND_MASK))
      def GET_APPCOMMAND_LPARAM(lParam) HIWORD(lParam) & ~FAPPCOMMAND_MASK end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646248
      # define GET_DEVICE_LPARAM(lParam) ((WORD)(HIWORD(lParam) & FAPPCOMMAND_MASK))
      def GET_DEVICE_LPARAM(lParam) HIWORD(lParam) & FAPPCOMMAND_MASK end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646249
      # define GET_FLAGS_LPARAM(lParam) (LOWORD(lParam))
      def GET_FLAGS_LPARAM(lParam) LOWORD(lParam) end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646250
      # define GET_KEYSTATE_LPARAM(lParam) GET_FLAGS_LPARAM(lParam)
      def GET_KEYSTATE_LPARAM(lParam) GET_FLAGS_LPARAM(lParam) end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646252
      # define GET_KEYSTATE_WPARAM(wParam) (LOWORD(wParam))
      def GET_KEYSTATE_WPARAM(wParam) LOWORD(wParam) end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646252
      # define GET_MOUSEORKEY_LPARAM GET_DEVICE_LPARAM
      def GET_MOUSEORKEY_LPARAM(lParam) GET_DEVICE_LPARAM(lParam) end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646253
      # define GET_NCHITTEST_WPARAM(wParam) ((short)LOWORD(wParam))
      def GET_NCHITTEST_WPARAM(wParam) LOWORD(wParam) end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646254
      # define GET_WHEEL_DELTA_WPARAM(wParam) ((short)HIWORD(wParam))
      def GET_WHEEL_DELTA_WPARAM(wParam) HIWORD(wParam) end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646255
      # define GET_XBUTTON_WPARAM(wParam) (HIWORD(wParam))
      def GET_XBUTTON_WPARAM(wParam) HIWORD(wParam) end

      #define IsLButtonDown() (GetKeyState(VK_LBUTTON) < 0)
      def IsLButtonDown; GetKeyState(VirtualKeyCode[:LBUTTON]) < 0 end

      #define IsRButtonDown() (GetKeyState(VK_RBUTTON) < 0)
      def IsRButtonDown; GetKeyState(VirtualKeyCode[:RBUTTON]) < 0 end

      #define IsMButtonDown() (GetKeyState(VK_MBUTTON) < 0)
      def IsMButtonDown; GetKeyState(VirtualKeyCode[:MBUTTON]) < 0 end
    end
  end
end
