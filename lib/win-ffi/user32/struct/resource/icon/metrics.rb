require 'win-ffi/gdi32/struct/font/log_font'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-iconmetricsa
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-iconmetricsw
    class ICONMETRICS < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :iHorzSpacing,
                    :iVertSpacing,
                    :iTitleWrap,
                    :lfFont

      layout cbSize:       :uint,
             iHorzSpacing: :int,
             iVertSpacing: :int,
             iTitleWrap:   :int,
             lfFont:       Gdi32::LOGFONT

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end
