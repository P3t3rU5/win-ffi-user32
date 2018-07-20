require 'win-ffi/core'
require_relative '../lib/win-ffi/user32'
require_relative '../lib/win-ffi/shcore'
require 'win-ffi/kernel32/function/dll'
require_relative '../lib/win-ffi/user32/struct/window/class/wndclassex'
require_relative '../lib/win-ffi/user32/function/window/message'

include WinFFI

def window_proc(hwnd, msg, wparam, lparam)
  msg_name = User32::WindowMessage[msg].to_s

  LOGGER.debug("0x#{hwnd.address.to_s(16)}->#{msg_name}")
  User32.DefWindowProc(hwnd, msg, wparam, lparam)
end
