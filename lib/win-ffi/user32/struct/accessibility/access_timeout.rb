require_relative '../../enum/accessibility/access_timeout_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagaccesstimeout
    class ACCESSTIMEOUT < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def dwFlags; end
      def dwFlags=(v); end
      def iTimeOutMSec; end
      def iTimeOutMSec=(v); end

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