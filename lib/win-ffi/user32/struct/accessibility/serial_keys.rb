require 'win-ffi/user32/enum/accessibility/serial_keys_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagserialkeysa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagserialkeysw
    class SERIALKEYS < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def dwFlags; end
      def dwFlags=(v); end
      def lpszActivePort; end
      def lpszActivePort=(v); end
      def lpszPort; end
      def lpszPort=(v); end
      def iBaudRate; end
      def iBaudRate=(v); end
      def iPortState; end
      def iPortState=(v); end
      def iActive; end
      def iActive=(v); end

      layout cbSize:         :uint,
             dwFlags:        SerialKeysFlag,
             lpszActivePort: :string,
             lpszPort:       :string,
             iBaudRate:      :uint,
             iPortState:     :uint,
             iActive:        :uint

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end