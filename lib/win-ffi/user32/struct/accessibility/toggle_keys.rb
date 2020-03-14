require_relative '../../enum/accessibility/toggle_keys_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-togglekeys
    class TOGGLEKEYS < FFIAdditions::Struct
      attr_accessor :cbSize, :dwFlags
      layout cbSize:  :uint,
             dwFlags: ToggleKeysFlag

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end