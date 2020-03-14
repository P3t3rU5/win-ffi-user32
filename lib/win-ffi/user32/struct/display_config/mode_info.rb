require 'win-ffi/core/struct/luid'

require_relative '../../enum/display_config/mode_info_type'

require_relative 'target_mode'
require_relative 'source_mode'
require_relative 'desktop_image_info'

module WinFFI
  module User32
    class DMIUNION < FFIAdditions::Union
      attr_accessor :targetMode, :sourceMode, :desktopImageInfo

      layout targetMode:       DISPLAYCONFIG_TARGET_MODE,
             sourceMode:       DISPLAYCONFIG_SOURCE_MODE,
             desktopImageInfo: DISPLAYCONFIG_DESKTOP_IMAGE_INFO
    end

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_mode_info
    class DISPLAYCONFIG_MODE_INFO < FFIAdditions::Struct
      attr_accessor :infoType, :id, :adapterId, :u

      layout infoType:  DisplayConfigModeInfoType,
             id:        :uint32,
             adapterId: LUID,
             u:         DMIUNION
    end
  end
end