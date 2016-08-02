require 'win-ffi/user32'

module WinFFI
  module User32
    buffer = [
        :GDIOBJECTS,  0, # Count of GDI objects
        :USEROBJECTS, 1  # Count of USER objects
    ]

    if WindowsVersion >= 7
      buffer += [
          :GDIOBJECTS_PEAK,  2, # Peak count of GDI objects
          :USEROBJECTS_PEAK, 4  # Peak count of USER objects
      ]
    end

    # The GUI object type
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms683192(v=vs.85).aspx
    GuiResourcesFlag = enum :gui_resources_flag, buffer

    define_prefix(:GR, GuiResourcesFlag)
  end
end