require_relative '../../enum/accessibility/sound_sentry_flag'
require_relative '../../enum/accessibility/sound_sentry_text_flag'
require_relative '../../enum/accessibility/sound_sentry_graph_flag'
require_relative '../../enum/accessibility/sound_sentry_window_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-soundsentrya
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-soundsentryw
    class SOUNDSENTRY < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :dwFlags,
                    :iFSTextEffect,
                    :iFSTextEffectMSec,
                    :iFSTextEffectColorBits,
                    :iFSGrafEffect,
                    :iFSGrafEffectMSec,
                    :iFSGrafEffectColor,
                    :iWindowsEffect,
                    :iWindowsEffectMSec,
                    :lpszWindowsEffectDLL,
                    :iWindowsEffectOrdinal

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