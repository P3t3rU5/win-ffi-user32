require 'win-ffi/gdi32/struct/font/log_font'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ff729175
    class NONCLIENTMETRICS < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def iBorderWidth; end
      def iBorderWidth=(v); end
      def iScrollWidth; end
      def iScrollWidth=(v); end
      def iScrollHeight; end
      def iScrollHeight=(v); end
      def iCaptionWidth; end
      def iCaptionWidth=(v); end
      def iCaptionHeight; end
      def iCaptionHeight=(v); end
      def lfCaptionFont; end
      def lfCaptionFont=(v); end
      def iSmCaptionWidth; end
      def iSmCaptionWidth=(v); end
      def iSmCaptionHeight; end
      def iSmCaptionHeight=(v); end
      def lfSmCaptionFont; end
      def lfSmCaptionFont=(v); end
      def iMenuWidth; end
      def iMenuWidth=(v); end
      def iMenuHeight; end
      def iMenuHeight=(v); end
      def lfMenuFont; end
      def lfMenuFont=(v); end
      def lfStatusFont; end
      def lfStatusFont=(v); end
      def lfMessageFont; end
      def lfMessageFont=(v); end

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
        def self.iPaddedBorderWidth; end
        def self.iPaddedBorderWidth=(v); end

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