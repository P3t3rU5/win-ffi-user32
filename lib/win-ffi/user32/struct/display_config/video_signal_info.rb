require_relative 'rational'
require_relative '2d_region'
require_relative '../../enum/display_config/scanline_ordering'

module WinFFI
  module User32
    class AdditionalSignalInfo < FFIAdditions::Struct
      attr_accessor :flags
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
      attr_accessor :AdditionalSignalInfo, :videoStandard

      layout :AdditionalSignalInfo, AdditionalSignalInfo,
             :videoStandard,        :uint32
    end

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_video_signal_info
    class DISPLAYCONFIG_VIDEO_SIGNAL_INFO < FFIAdditions::Struct
      attr_accessor :pixelRate,
                    :hSyncFreq,
                    :vSyncFreq,
                    :activeSize,
                    :totalSize,
                    :u,
                    :scanLineOrdering

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