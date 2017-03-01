require 'win-ffi/user32'

require 'win-ffi/gdi32/struct/font/log_font'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ff729175(v=vs.85).aspx
    class NONCLIENTMETRICS < FFIAdditions::Struct
      buffer = [
          :cbSize,                   :uint,
          :iBorderWidth,              :int,
          :iScrollWidth,              :int,
          :iScrollHeight,             :int,
          :iCaptionWidth,             :int,
          :iCaptionHeight,            :int,
          :lfCaptionFont,   Gdi32::LOGFONT,
          :iSmCaptionWidth,           :int,
          :iSmCaptionHeight,          :int,
          :lfSmCaptionFont, Gdi32::LOGFONT,
          :iMenuWidth,                :int,
          :iMenuHeight,               :int,
          :lfMenuFont,      Gdi32::LOGFONT,
          :lfStatusFont,    Gdi32::LOGFONT,
          :lfMessageFont,   Gdi32::LOGFONT
      ]

      buffer += [:iPaddedBorderWidth, :int] if WINDOWS_VERSION >= :vista

      layout *buffer

      def initialize
        super
        self[:cbSize] = self.size
      end
    end
  end
end