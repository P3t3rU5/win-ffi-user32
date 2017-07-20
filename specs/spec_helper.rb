$LOAD_PATH.unshift File.expand_path('../../win-ffi-core/lib', __dir__)
$LOAD_PATH.unshift File.expand_path('../../win-ffi-gdi32/lib', __dir__)
$LOAD_PATH.unshift File.expand_path('../../win-ffi-kernel32/lib', __dir__)
$LOAD_PATH.unshift File.expand_path('../../win-ffi-user32/lib', __dir__)
$LOAD_PATH.unshift File.expand_path('../../../ffi-additions', __dir__)

require 'win-ffi/core'
require 'win-ffi/kernel32/function/dll'
require 'win-ffi/user32/struct/window/window_class/wndclassex'
require 'win-ffi/user32/function/window/message'

include WinFFI

def window_proc(hwnd, msg, wparam, lparam)
  msg_name = User32::WindowMessage[msg].to_s

  LOGGER.debug("0x#{hwnd.address.to_s(16)}->#{msg_name}")
  User32.DefWindowProc(hwnd, msg, wparam, lparam)
end
