require_relative '../../enum/accessibility/mouse_keys_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagmousekeys
    class MOUSEKEYS < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def dwFlags; end
      def dwFlags=(v); end
      def iMaxSpeed; end
      def iMaxSpeed=(v); end
      def iTimeToMaxSpeed; end
      def iTimeToMaxSpeed=(v); end
      def iCtrlSpeed; end
      def iCtrlSpeed=(v); end
      def dwReserved1; end
      def dwReserved1=(v); end
      def dwReserved2; end
      def dwReserved2=(v); end

      layout cbSize:          :uint,
             dwFlags:         MouseKeysFlag,
             iMaxSpeed:       :dword,
             iTimeToMaxSpeed: :dword,
             iCtrlSpeed:      :dword,
             dwReserved1:     :dword,
             dwReserved2:     :dword

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end