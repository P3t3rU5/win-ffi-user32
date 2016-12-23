require 'win-ffi/user32'

module WinFFI
  module User32
    if WindowsVersion >= :vista
      USER_DEFAULT_SCREEN_DPI = 96
    end
  end
end