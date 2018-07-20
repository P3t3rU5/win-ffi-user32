module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # constants for SPI_GETGESTUREVISUALIZATION and SPI_SETGESTUREVISUALIZATION
      # https://docs.microsoft.com/en-us/windows/desktop/winmsg/gesture-visualization
      GestureVisualiztion = enum :gesture_visualiztion, [
          :OFF,          0x0000,
          :ON,           0x001F,
          :TAP,          0x0001,
          :DOUBLETAP,    0x0002,
          :PRESSANDTAP,  0x0004,
          :PRESSANDHOLD, 0x0008,
          :RIGHTTAP,     0x0010
      ]

      define_prefix(:GESTUREVISUALIZATION, GestureVisualiztion)
    end
  end
end