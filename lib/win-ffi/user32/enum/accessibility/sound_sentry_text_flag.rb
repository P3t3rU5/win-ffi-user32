require 'win-ffi/user32'

module WinFFI
  module User32
    # values for SOUNDSENTRY iFSTextEffect field
    SoundSentryTextFlag = enum :sound_sentry_text_flag, [
        :NONE,    0,
        :CHARS,   1,
        :BORDER,  2,
        :DISPLAY, 3
    ]

    define_prefix(:SSTF, SoundSentryTextFlag)
  end
end