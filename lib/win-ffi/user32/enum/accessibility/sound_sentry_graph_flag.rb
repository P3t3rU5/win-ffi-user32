module WinFFI
  module User32
    # values for SOUNDSENTRY iFSGrafEffect field
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373646(v=vs.85).aspx
    SoundSentryGraphFlag = enum :sound_sentry_graph_flag, [:NONE, 0, :DISPLAY, 3]

    define_prefix(:SSGF, SoundSentryGraphFlag)
  end
end