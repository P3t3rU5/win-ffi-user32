require 'win-ffi/user32'

module WinFFI
  module User32
    # values for SOUNDSENTRY iFSGrafEffect field
    SoundSentryGraphFlag = enum :sound_sentry_graph_flag, [
        :NONE,    0,
        :DISPLAY, 3
    ]

    define_prefix(:SSGF, SoundSentryGraphFlag)
  end
end