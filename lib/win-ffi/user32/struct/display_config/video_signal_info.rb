require_relative 'rational'
require_relative '2d_region'
require_relative '../../enum/display_config/scanline_ordering'

module WinFFI
  module User32
    class AdditionalSignalInfo < FFIAdditions::Struct
      def flags; end
      def flags=(v) end
      layout flags: :uint32

      def videoStandard
        # TODO
      end

      def vSyncFreqDivider
        # TODO
      end

      def videoStandard=(v)
        # TODO
      end

      def vSyncFreqDivider=(v)
        # TODO
      end
    end

    class DVSIUNION < FFIAdditions::Union
      def AdditionalSignalInfo; end
      def AdditionalSignalInfo=(v) end
      def videoStandard; end
      def videoStandard=(v) end

      layout :AdditionalSignalInfo, AdditionalSignalInfo,
             :videoStandard,        :uint32
    end

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_video_signal_info
    class DISPLAYCONFIG_VIDEO_SIGNAL_INFO < FFIAdditions::Struct
      def pixelRate; end
      def pixelRate=(v) end
      def hSyncFreq; end
      def hSyncFreq=(v) end
      def vSyncFreq; end
      def vSyncFreq=(v) end
      def activeSize; end
      def activeSize=(v) end
      def totalSize; end
      def totalSize=(v) end
      def u; end
      def u=(v) end
      def scanLineOrdering; end
      def scanLineOrdering=(v) end

      layout pixelRate:        :uint64,
             hSyncFreq:        DISPLAYCONFIG_RATIONAL,
             vSyncFreq:        DISPLAYCONFIG_RATIONAL,
             activeSize:       DISPLAYCONFIG_2DREGION,
             totalSize:        DISPLAYCONFIG_2DREGION,
             u:                DVSIUNION,
             scanLineOrdering: DisplayConfigScanlineOrdering
    end
  end
end