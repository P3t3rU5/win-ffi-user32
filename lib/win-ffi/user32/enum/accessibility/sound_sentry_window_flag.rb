module WinFFI
  module User32
    # values for SOUNDSENTRY iWindowsEffect field
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagsoundsentrya#members
    SoundSentryWindowFlag = enum :sound_sentry_window_flag, [:NONE, 0, :TITLE, 1, :WINDOW, 2, :DISPLAY, 3, :CUSTOM, 4]

    define_prefix(:SSWF, SoundSentryWindowFlag)
  end
end