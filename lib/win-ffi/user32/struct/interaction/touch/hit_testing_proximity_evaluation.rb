module WinFFI
  if WINDOWS_VERSION >= 8
    require 'win-ffi/core/struct/point'

    module User32
      class TOUCH_HIT_TESTING_PROXIMITY_EVALUATION < FFIAdditions::Struct
        def score; end
        def score=(v); end
        def adjustedPoint; end
        def adjustedPoint=(v); end

        layout score:         :uint16,
               adjustedPoint: POINT
      end
    end
  end
end