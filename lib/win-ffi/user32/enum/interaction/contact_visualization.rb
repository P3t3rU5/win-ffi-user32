module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # constants for SPI_GETCONTACTVISUALIZATION and SPI_SETCONTACTVISUALIZATION
      # https://docs.microsoft.com/en-us/windows/desktop/winmsg/contact-visualization
      ContactVisualization = enum :contact_visualization, [:OFF, 0x0000, :ON, 0x0001, :PRESENTATIONMODE, 0x0002]

      define_prefix(:CONTACTVISUALIZATION, ContactVisualization)
    end
  end
end