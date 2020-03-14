module WinFFI
  if WINDOWS_VERSION >= 8
    require 'win-ffi/core/struct/point'

    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-touch_hit_testing_proximity_evaluation
      class TOUCH_HIT_TESTING_PROXIMITY_EVALUATION < FFIAdditions::Struct
        attr_accessor :score, :adjustedPoint

        layout score:         :uint16,
               adjustedPoint: POINT
      end
    end
  end
end