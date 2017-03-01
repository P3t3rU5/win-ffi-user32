require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= 10
    module User32
      # constants for SPI_{GET|SET}PENVISUALIZATION
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dn903653(v=vs.85).aspx
      PenVisualization = enum :pen_visualization, [
          :ON,        0x0023,
          :OFF,       0x0000,
          :TAP,       0x0001,
          :DOUBLETAP, 0x0002,
          :CURSOR,    0x0020,
      ]

      define_prefix(:PENVISUALIZATION, PenVisualization)
    end
  end
end