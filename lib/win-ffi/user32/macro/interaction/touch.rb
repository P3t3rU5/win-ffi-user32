module WinFFI
  module User32
    # Conversion of touch input coordinates to pixels
    #define TOUCH_COORD_TO_PIXEL(l)         ((l) / 100)
    def TOUCH_COORD_TO_PIXEL(l)
      l / 100
    end
  end
end