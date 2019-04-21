module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-disableprocesswindowsghosting
      def self.DisableProcessWindowsGhosting; end
      attach_function 'DisableProcessWindowsGhosting', [], :void
    end
  end
end