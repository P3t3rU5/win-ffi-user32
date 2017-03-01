require 'win-ffi/user32'

module WinFFI
  module User32
    if WINDOWS_VERSION >= :vista
      USER_DEFAULT_SCREEN_DPI = 96
    end
  end
end