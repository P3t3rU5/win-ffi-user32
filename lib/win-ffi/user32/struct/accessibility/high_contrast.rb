require_relative '../../enum/accessibility/high_contrast_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-taghighcontrasta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-taghighcontrastw
    class HIGHCONTRAST < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def dwFlags; end
      def dwFlags=(v); end
      def lpszDefaultScheme; end
      def lpszDefaultScheme=(v); end

      layout cbSize:            :uint,
             dwFlags:           HighContrastFlag,
             lpszDefaultScheme: :string

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end
