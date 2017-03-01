require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # constants for SPI_GETFONTSMOOTHINGORIENTATION and SPI_SETFONTSMOOTHINGORIENTATION:
      FontSmoothingOrientation = enum :font_smoothing_orientation, [
          :BGR, 0x0000,
          :RGB, 0x0001,
      ]

      define_prefix(:FE_FONTSMOOTHING, FontSmoothingOrientation, true)
    end
  end
end