module WinFFI
  module User32
    # values for SOUNDSENTRY iFSTextEffect field
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagsoundsentrya#members
    SoundSentryTextFlag = enum :sound_sentry_text_flag, [:NONE, 0, :CHARS, 1, :BORDER, 2, :DISPLAY, 3]

    define_prefix(:SSTF, SoundSentryTextFlag)
  end
end