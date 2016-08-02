require 'win-ffi/user32'

module WinFFI
  module User32
    class << self
      #if (_WIN32_WINNT >= 0x0601)
      if WindowsVersion >= 7
        #define GET_DEVICE_CHANGE_WPARAM(wParam)  (LOWORD(wParam))
        def GET_DEVICE_CHANGE_WPARAM(wParam) LOWORD(wParam); end
      #elif (_WIN32_WINNT >= 0x0501)
      elsif WindowsVersion >= :xp
        #define GET_DEVICE_CHANGE_LPARAM(lParam)  (LOWORD(lParam))
        def GET_DEVICE_CHANGE_LPARAM(lParam)  LOWORD(lParam); end
      #endif  (_WIN32_WINNT >= 0x0601)
      end
    end
  end
end