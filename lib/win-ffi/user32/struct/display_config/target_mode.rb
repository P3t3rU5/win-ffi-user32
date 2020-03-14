require_relative 'video_signal_info'

module WinFFI
  module User32
    class DISPLAYCONFIG_TARGET_MODE < FFIAdditions::Struct
      attr_accessor :targetVideoSignalInfo

      layout targetVideoSignalInfo: DISPLAYCONFIG_VIDEO_SIGNAL_INFO
    end
  end
end