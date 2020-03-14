require 'win-ffi/core/struct/point'
require 'win-ffi/core/struct/rect'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_desktop_image_info
    class DISPLAYCONFIG_DESKTOP_IMAGE_INFO < FFIAdditions::Struct
      attr_accessor :PathSourceSize, :DesktopImageRegion, :DesktopImageClip,

      layout PathSourceSize:     POINT,
             DesktopImageRegion: RECT,
             DesktopImageClip:   RECT
    end
  end
end