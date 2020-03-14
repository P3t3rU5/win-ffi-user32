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
        attr_accessor :desktopModeInfoIdx, :targetModeInfoIdx

        layout desktopModeInfoIdx: :uint32,
               targetModeInfoIdx:  :uint32
      end

      class DPTIUNION < FFIAdditions::Union
        attr_accessor :modeInfoIdx, :s

        layout modeInfoIdx: :uint32,
               s:           DPTISTRUCT
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_path_target_info
      class DISPLAYCONFIG_PATH_TARGET_INFO < FFIAdditions::Struct
        attr_accessor :adapterId,
                      :id,
                      :u,
                      :outputTechnology,
                      :rotation,
                      :scaling,
                      :refreshRate,
                      :scanLineOrdering,
                      :targetAvailable,
                      :statusFlags

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