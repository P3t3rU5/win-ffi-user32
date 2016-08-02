require 'win-ffi/user32'

module WinFFI
  module User32
    # values for SOUNDSENTRY iFSTextEffect field
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373646(v=vs.85).aspx
    SoundSentryTextFlag = enum :sound_sentry_text_flag, [
        :NONE,    0,
        :CHARS,   1,
        :BORDER,  2,
        :DISPLAY, 3
    ]

    define_prefix(:SSTF, SoundSentryTextFlag)
  end
end