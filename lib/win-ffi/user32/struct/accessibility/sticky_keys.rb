require_relative '../../enum/accessibility/sticky_keys_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-stickykeys
    class STICKYKEYS < FFIAdditions::Struct
      attr_accessor :cbSize, :dwFlags
      layout cbSize:  :uint,
             dwFlags: StickyKeysFlag

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end
