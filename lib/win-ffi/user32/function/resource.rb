require_relative '../enum/resource/load_resource_flag'
require_relative '../enum/resource/bitmap/oem_bitmap'
require_relative '../enum/resource/cursor/oem_cursor'
require_relative '../enum/resource/icon/oem_icon'
require_relative '../enum/resource/image'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-copyimage
    # HANDLE WINAPI CopyImage(
    #   _In_  HANDLE hImage,
    #   _In_  UINT uType,
    #   _In_  int cxDesired,
    #   _In_  int cyDesired,
    #   _In_  UINT fuFlags )
    def self.CopyImage(hImage, uType, cxDesired, cyDesired, fuFlags); end
    attach_function 'CopyImage', [:handle, Image, :int, :int, LoadResourceFlag], :handle

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadimagea
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadimagew
    # HANDLE LoadImage(
    #   __in_opt  HINSTANCE hinst,
    #   __in      LPCTSTR   lpszName,
    #   __in      UINT      uType,
    #   __in      int       cxDesired,
    #   __in      int       cyDesired,
    #   __in      UINT      fuLoad)
    def self.LoadImage(hinst, lpszName, uType, cxDesired, cyDesired, fuLoad); end
    encoded_function 'LoadImage', [:hinstance, :pointer, Image, :int, :int, :uint], :handle
  end
end