require_relative '../function/shutdown'

module WinFFI
  module User32
    def self.ExitWindows
      ExitWindowsEx(:LOGOFF, 0xFFFFFFFF)
    end
  end
end