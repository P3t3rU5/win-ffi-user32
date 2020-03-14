require 'win-ffi/gdi32/struct/font/log_font'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-nonclientmetricsa
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-nonclientmetricsw
    class NONCLIENTMETRICS < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :iBorderWidth,
                    :iScrollWidth,
                    :iScrollHeight,
                    :iCaptionWidth,
                    :iCaptionHeight,
                    :lfCaptionFont,
                    :iSmCaptionWidth,
                    :iSmCaptionHeight,
                    :lfSmCaptionFont,
                    :iMenuWidth,
                    :iMenuHeight,
                    :lfMenuFont,
                    :lfStatusFont,
                    :lfMessageFont

      buffer = {
          cbSize:           :uint,
          iBorderWidth:     :int,
          iScrollWidth:     :int,
          iScrollHeight:    :int,
          iCaptionWidth:    :int,
          iCaptionHeight:   :int,
          lfCaptionFont:    Gdi32::LOGFONT,
          iSmCaptionWidth:  :int,
          iSmCaptionHeight: :int,
          lfSmCaptionFont:  Gdi32::LOGFONT,
          iMenuWidth:       :int,
          iMenuHeight:      :int,
          lfMenuFont:       Gdi32::LOGFONT,
          lfStatusFont:     Gdi32::LOGFONT,
          lfMessageFont:    Gdi32::LOGFONT
      }

      if WINDOWS_VERSION >= :vista
        attr_accessor :iPaddedBorderWidth
        buffer.merge( { iPaddedBorderWidth: :int } )
      end

      layout buffer

      def initialize
        super
        self[:cbSize] = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end