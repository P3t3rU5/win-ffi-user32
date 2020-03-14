module WinFFI
  if WINDOWS_VERSION >= 8
    require 'win-ffi/core/struct/point'
    require 'win-ffi/core/struct/rect'

    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-touch_hit_testing_input
      # WM_TOUCHHITTESTING structure
      class TOUCH_HIT_TESTING_INPUT < FFIAdditions::Struct
        attr_accessor :pointerId,
                      :point,
                      :boundingBox,
                      :nonOccludedBoundingBox,
                      :orientation

        layout pointerId:              :uint32,
               point:                  POINT,
               boundingBox:            RECT,
               nonOccludedBoundingBox: RECT,
               orientation:            :uint32
      end
    end
  end
end