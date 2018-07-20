module WinFFI
  if WINDOWS_VERSION >= 8
    require 'win-ffi/core/struct/point'
    require 'win-ffi/core/struct/rect'

    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437254
      # WM_TOUCHHITTESTING structure
      class TOUCH_HIT_TESTING_INPUT < FFIAdditions::Struct
        def pointerId; end
        def pointerId=(v) end
        def point; end
        def point=(v) end
        def boundingBox; end
        def boundingBox=(v) end
        def nonOccludedBoundingBox; end
        def nonOccludedBoundingBox=(v) end
        def orientation; end
        def orientation=(v) end

        layout pointerId:              :uint32,
               point:                  POINT,
               boundingBox:            RECT,
               nonOccludedBoundingBox: RECT,
               orientation:            :uint32
      end
    end
  end
end