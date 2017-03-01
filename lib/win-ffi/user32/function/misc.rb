require 'win-ffi/user32'

module WinFFI
  module User32
    if WINDOWS_VERSION >= :xp
      # https://msdn.microsoft.com/en-us/library/ms648415(v=vs.85).aspx
      # VOID WINAPI DisableProcessWindowsGhosting(void)
      attach_function 'DisableProcessWindowsGhosting', [], :void
    end
  end
end