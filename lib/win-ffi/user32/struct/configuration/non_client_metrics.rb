require 'win-ffi/user32'

require 'win-ffi/gdi32/struct/text/log_font'

module WinFFI
  module User32
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

      buffer += [:iPaddedBorderWidth, :int] if WindowsVersion >= :vista

      layout buffer

      def initialize
        super
        self[:cbSize] = self.size
      end
    end
  end
end