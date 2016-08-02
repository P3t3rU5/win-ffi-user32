require 'win-ffi/user32'

module WinFFI
  module User32
    # SOUNDSENTRY dwFlags field
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373646(v=vs.85).aspx
    SoundSentryFlag = enum :sound_sentry_flag, [
        :SOUNDSENTRYON, 0x00000001,
        :AVAILABLE,     0x00000002,
        :INDICATOR,     0x00000004,
    ]

    define_prefix(:SSF, SoundSentryFlag)
  end
end