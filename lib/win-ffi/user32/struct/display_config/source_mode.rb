require 'win-ffi/core/struct/point'

require_relative '../../enum/display_config/pixel_format'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_source_mode
    class DISPLAYCONFIG_SOURCE_MODE < FFIAdditions::Struct
      attr_accessor :width, :height, :pixelFormat, :position

      layout width:       :uint32,
             height:      :uint32,
             pixelFormat: DisplayConfigPixelFormat,
             position:    POINT
    end
  end
end