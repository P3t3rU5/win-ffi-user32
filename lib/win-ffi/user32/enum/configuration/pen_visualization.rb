module WinFFI
  if WINDOWS_VERSION > 8.1
    module User32
      # constants for SPI_{GET|SET}PENVISUALIZATION */
      PenVisuazitaion = enum :pen_visuazitaion, [
          :ON,        0x0023,
          :OFF,       0x0000,
          :TAP,       0x0001,
          :DOUBLETAP, 0x0002,
          :CURSOR,    0x0020,
      ]

      define_prefix(:PENVISUALIZATION, PenVisuazitaion)
    end
  end
end