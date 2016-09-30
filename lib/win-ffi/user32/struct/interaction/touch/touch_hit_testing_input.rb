require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 8
    require 'win-ffi/core/struct/point'
    require 'win-ffi/core/struct/rect'

    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437254(v=vs.85).aspx
      # WM_TOUCHHITTESTING structure
      class TOUCH_HIT_TESTING_INPUT < FFIAdditions::Struct
        layout pointerId:           :uint32,
               point:                 POINT,
               boundingBox:            RECT,
               nonOccludedBoundingBox: RECT,
               orientation:         :uint32
      end
    end
  end
end