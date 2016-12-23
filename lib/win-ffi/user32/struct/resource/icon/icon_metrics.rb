require 'win-ffi/user32'
require 'win-ffi/gdi32/struct/font/log_font'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648054(v=vs.85).aspx
    class ICONMETRICS < FFIAdditions::Struct
      layout cbSize:          :uint,
             iHorzSpacing:     :int,
             iVertSpacing:     :int,
             iTitleWrap:       :int,
             lfFont: Gdi32::LOGFONT

      def initialize
        super
        self.cbSize = self.size
      end
    end
  end
end
