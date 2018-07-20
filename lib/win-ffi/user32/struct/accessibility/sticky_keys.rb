require_relative '../../enum/accessibility/sticky_keys_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagstickykeys
    class STICKYKEYS < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def dwFlags; end
      def dwFlags=(v); end

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
