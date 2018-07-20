require_relative '../../../../win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # constants for SPI_GETFONTSMOOTHINGTYPE and SPI_SETFONTSMOOTHINGTYPE:
      FontSmoothingType = enum :font_smoothing_type, [
          :STANDARD,  0x0001,
          :CLEARTYPE, 0x0002,
      ]

      define_prefix(:FE_FONTSMOOTHING, FontSmoothingType, true)
    end
  end
end