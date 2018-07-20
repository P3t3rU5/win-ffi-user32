module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646307(v=vs.85).aspx
    buffer = [:VK_TO_VSC, 0, :VSC_TO_VK, 1, :VK_TO_CHAR, 2, :VSC_TO_VK_EX, 3,]

    buffer += [:VK_TO_VSC_EX, 4] if WINDOWS_VERSION >= :vista

    MapVirtualKey = enum :map_virtual_key, buffer

    define_prefix(:MAPVK, MapVirtualKey)
  end
end