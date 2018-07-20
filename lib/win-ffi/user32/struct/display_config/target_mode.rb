require_relative 'video_signal_info'

module WinFFI
  module User32
    class DISPLAYCONFIG_TARGET_MODE < FFIAdditions::Struct
      def targetVideoSignalInfo; end
      def targetVideoSignalInfo=(v) end

      layout targetVideoSignalInfo: DISPLAYCONFIG_VIDEO_SIGNAL_INFO
    end
  end
end