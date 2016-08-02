require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 8
    module User32
      # constants for SPI_GETCONTACTVISUALIZATION and SPI_SETCONTACTVISUALIZATION
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh924309(v=vs.85).aspx
      ContactVisualization = enum :contact_visualization, [
          :OFF,              0x0000,
          :ON,               0x0001,
          :PRESENTATIONMODE, 0x0002,
      ]

      define_prefix(:CONTACTVISUALIZATION, ContactVisualization)
    end
  end
end