require 'win-ffi/core/struct/luid'

require_relative '../../enum/display_config/mode_info_type'

require_relative 'target_mode'
require_relative 'source_mode'
require_relative 'desktop_image_info'

module WinFFI
  module User32
    class DMIUNION < FFIAdditions::Union
      def targetMode; end
      def targetMode=(v) end
      def sourceMode; end
      def sourceMode=(v) end
      def desktopImageInfo; end
      def desktopImageInfo=(v) end

      layout targetMode:       DISPLAYCONFIG_TARGET_MODE,
             sourceMode:       DISPLAYCONFIG_SOURCE_MODE,
             desktopImageInfo: DISPLAYCONFIG_DESKTOP_IMAGE_INFO
    end

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_mode_info
    class DISPLAYCONFIG_MODE_INFO < FFIAdditions::Struct
      def infoType; end
      def infoType=(v) end
      def id; end
      def id=(v) end
      def adapterId; end
      def adapterId=(v) end
      def u; end
      def u=(v) end

      layout infoType:  DisplayConfigModeInfoType,
             id:        :uint32,
             adapterId: LUID,
             u:         DMIUNION
    end
  end
end