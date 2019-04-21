require_relative '../enum/resource/load_resource_flag'
require_relative '../enum/resource/bitmap/oem_bitmap'
require_relative '../enum/resource/cursor/oem_cursor'
require_relative '../enum/resource/icon/oem_icon'
require_relative '../enum/resource/image'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-copyimage
    # @param [FFI::Pointer] hImage
    # @param [Integer] uType
    # @param [Integer] cxDesired
    # @param [Integer] cyDesired
    # @param [Integer] fuFlags
    # @return [FFI::Pointer]
    def self.CopyImage(hImage, uType, cxDesired, cyDesired, fuFlags) end
    attach_function 'CopyImage', [:handle, Image, :int, :int, LoadResourceFlag], :handle

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadimagea
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadimagew
    # @param [FFI::Pointer] hinst
    # @param [FFI::Pointer] lpszName
    # @param [Integer] uType
    # @param [Integer] cxDesired
    # @param [Integer] cyDesired
    # @param [Integer] fuLoad
    # @return [FFI::Pointer]
    def self.LoadImage(hinst, lpszName, uType, cxDesired, cyDesired, fuLoad) end
    encoded_function 'LoadImage', [:hinstance, :pointer, Image, :int, :int, :uint], :handle
  end
end