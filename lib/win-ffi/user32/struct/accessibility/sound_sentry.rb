require_relative '../../enum/accessibility/sound_sentry_flag'
require_relative '../../enum/accessibility/sound_sentry_text_flag'
require_relative '../../enum/accessibility/sound_sentry_graph_flag'
require_relative '../../enum/accessibility/sound_sentry_window_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagsoundsentrya
    class SOUNDSENTRY < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def dwFlags; end
      def dwFlags=(v); end
      def iFSTextEffect; end
      def iFSTextEffect=(v); end
      def iFSTextEffectMSec; end
      def iFSTextEffectMSec=(v); end
      def iFSTextEffectColorBits; end
      def iFSTextEffectColorBits=(v); end
      def iFSGrafEffect; end
      def iFSGrafEffect=(v); end
      def iFSGrafEffectMSec; end
      def iFSGrafEffectMSec=(v); end
      def iFSGrafEffectColor; end
      def iFSGrafEffectColor=(v); end
      def iWindowsEffect; end
      def iWindowsEffect=(v); end
      def iWindowsEffectMSec; end
      def iWindowsEffectMSec=(v); end
      def lpszWindowsEffectDLL; end
      def lpszWindowsEffectDLL=(v); end
      def iWindowsEffectOrdinal; end
      def iWindowsEffectOrdinal=(v); end

      layout cbSize:                 :uint,
             dwFlags:                SoundSentryFlag,
             iFSTextEffect:          SoundSentryTextFlag,
             iFSTextEffectMSec:      :dword,
             iFSTextEffectColorBits: :dword,
             iFSGrafEffect:          SoundSentryGraphFlag,
             iFSGrafEffectMSec:      :dword,
             iFSGrafEffectColor:     :dword,
             iWindowsEffect:         SoundSentryWindowFlag,
             iWindowsEffectMSec:     :dword,
             lpszWindowsEffectDLL:   :string,
             iWindowsEffectOrdinal:  :dword

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end