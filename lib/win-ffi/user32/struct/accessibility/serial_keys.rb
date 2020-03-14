require 'win-ffi/user32/enum/accessibility/serial_keys_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-serialkeysa
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-serialkeysw
    class SERIALKEYS < FFIAdditions::Struct
      attr_accessor :cbSize, :dwFlags, :lpszActivePort, :lpszPort, :iBaudRate, :iPortState, :iActive

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