require 'win-ffi/user32'

module WinFFI
  module User32
    # values for SOUNDSENTRY iWindowsEffect field
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373646(v=vs.85).aspx
    SoundSentryWindowFlag = enum :sound_sentry_window_flag, [
        :NONE,    0,
        :TITLE,   1,
        :WINDOW,  2,
        :DISPLAY, 3,
        :CUSTOM,  4
    ]

    define_prefix(:SSWF, SoundSentryWindowFlag)
  end
end