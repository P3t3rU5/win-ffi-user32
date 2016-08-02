require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646307(v=vs.85).aspx
    buffer = [
      :VK_TO_VSC,    0,
      :VSC_TO_VK,    1,
      :VK_TO_CHAR,   2,
      :VSC_TO_VK_EX, 3,
    ]

    if WindowsVersion >= :vista
      buffer += [:VK_TO_VSC_EX, 4]
    end

    MapVirtualKey = enum :map_virtual_key, buffer

    define_prefix(:MAPVK, MapVirtualKey)
  end
end