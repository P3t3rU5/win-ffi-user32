require 'win-ffi/core/struct/point'

require_relative '../../enum/display_config/pixel_format'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_source_mode
    class DISPLAYCONFIG_SOURCE_MODE < FFIAdditions::Struct
      def width; end
      def width=(v) end
      def height; end
      def height=(v) end
      def pixelFormat; end
      def pixelFormat=(v) end
      def position; end
      def position=(v) end

      layout width:       :uint32,
             height:      :uint32,
             pixelFormat: DisplayConfigPixelFormat,
             position:    POINT
    end
  end
end