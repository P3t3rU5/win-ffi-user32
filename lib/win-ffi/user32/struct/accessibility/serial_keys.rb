require 'win-ffi/user32/enum/accessibility/serial_keys_flag'

module WinFFI
  module User32

    class SERIALKEYSA < FFIAdditions::Struct
      layout cbSize:           :uint,
             dwFlags: SerialKeysFlag,
             lpszActivePort: :string,
             lpszPort:       :string,
             iBaudRate:        :uint,
             iPortState:       :uint,
             iActive:          :uint

      def initialize
        super
        self.cbSize = self.size
      end
    end
  end
end