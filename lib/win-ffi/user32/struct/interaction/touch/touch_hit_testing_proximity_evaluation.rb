require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    class TOUCH_HIT_TESTING_PROXIMITY_EVALUATION < FFIAdditions::Struct
      layout score:       :uint16,
             adjustedPoint: POINT
    end
  end
end