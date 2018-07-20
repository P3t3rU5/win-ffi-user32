module WinFFI
  if WINDOWS_VERSION >= 7
    require 'win-ffi/core/struct/luid'

    require_relative '../../enum/display_config/video_output_technology'
    require_relative '../../enum/display_config/rotation'
    require_relative '../../enum/display_config/scaling'
    require_relative '../../enum/display_config/scanline_ordering'

    require_relative 'rational'

    module User32
      class DPTISTRUCT < FFIAdditions::Struct
        def desktopModeInfoIdx; end
        def desktopModeInfoIdx=(v) end
        def targetModeInfoIdx; end
        def targetModeInfoIdx=(v) end

        layout desktopModeInfoIdx: :uint32,
               targetModeInfoIdx:  :uint32
      end

      class DPTIUNION < FFIAdditions::Union
        def modeInfoIdx; end
        def modeInfoIdx=(v) end
        def s; end
        def s=(v) end

        layout modeInfoIdx: :uint32,
               s:           DPTISTRUCT
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_path_target_info
      class DISPLAYCONFIG_PATH_TARGET_INFO < FFIAdditions::Struct
        def adapterId; end
        def adapterId=(v) end
        def id; end
        def id=(v) end
        def u; end
        def u=(v) end
        def outputTechnology; end
        def outputTechnology=(v) end
        def rotation; end
        def rotation=(v) end
        def scaling; end
        def scaling=(v) end
        def refreshRate; end
        def refreshRate=(v) end
        def scanLineOrdering; end
        def scanLineOrdering=(v) end
        def targetAvailable; end
        def targetAvailable=(v) end
        def statusFlags; end
        def statusFlags=(v) end

        layout adapterId:        LUID,
               id:               :uint32,
               u:                DPTIUNION,
               outputTechnology: DisplayConfigVideoOutputTechnology,
               rotation:         DisplayConfigRotation,
               scaling:          DisplayConfigScaling,
               refreshRate:      DISPLAYCONFIG_RATIONAL,
               scanLineOrdering: DisplayConfigScanlineOrdering,
               targetAvailable:  :bool,
               statusFlags:      :uint32
      end
    end
  end
end