require_relative '../../enum/accessibility/high_contrast_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-highcontrasta
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-highcontrastw
    class HIGHCONTRAST < FFIAdditions::Struct
      attr_accessor :cbSize, :dwFlags, :lpszDefaultScheme
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
