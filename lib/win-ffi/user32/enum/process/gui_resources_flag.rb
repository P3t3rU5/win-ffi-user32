module WinFFI
  module User32
    buffer = [:GDIOBJECTS,  0, :USEROBJECTS, 1]

    buffer += [:GDIOBJECTS_PEAK, 2, :USEROBJECTS_PEAK, 4,] if WINDOWS_VERSION >= 7
    # TODO define GR_GLOBAL           ((HANDLE)-2)

    # The GUI object type
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms683192(v=vs.85).aspx
    GuiResourcesFlag = enum :gui_resources_flag, buffer

    define_prefix(:GR, GuiResourcesFlag)
  end
end