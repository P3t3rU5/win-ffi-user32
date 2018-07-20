module WinFFI
  module User32
    USER_DEFAULT_SCREEN_DPI = 96 if WINDOWS_VERSION >= :vista
  end
end