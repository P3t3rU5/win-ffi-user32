module WinFFI
  module User32
    # SOUNDSENTRY dwFlags field
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagsoundsentrya#members
    SoundSentryFlag = enum :sound_sentry_flag, [
        :SOUNDSENTRYON, 0x00000001,
        :AVAILABLE,     0x00000002,
        :INDICATOR,     0x00000004,
    ]

    define_prefix(:SSF, SoundSentryFlag)
  end
end