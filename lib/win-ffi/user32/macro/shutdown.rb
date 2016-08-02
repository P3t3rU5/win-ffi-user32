require 'win-ffi/user32/function/shutdown'

module WinFFI
  module User32
    class << self
      def self.ExitWindows
        ExitWindowsEx(:LOGOFF, 0xFFFFFFFF)
      end
    end
  end
end