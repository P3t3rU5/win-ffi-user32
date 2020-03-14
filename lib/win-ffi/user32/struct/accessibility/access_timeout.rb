require_relative '../../enum/accessibility/access_timeout_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-accesstimeout
    class ACCESSTIMEOUT < FFIAdditions::Struct
      attr_accessor :cbSize, :dwFlags, :iTimeOutMSec
      layout cbSize:       :uint,
             dwFlags:      AccessTimeoutFlag,
             iTimeOutMSec: :dword

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end