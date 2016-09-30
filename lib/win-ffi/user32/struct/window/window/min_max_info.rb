require 'win-ffi/user32'

require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    # Struct pointed to by WM_GETMINMAXINFO lParam
    class MINMAXINFO < FFIAdditions::Struct
      layout ptReserved:     POINT,
             ptMaxSize:      POINT,
             ptMaxPosition:  POINT,
             ptMinTrackSize: POINT,
             ptMaxTrackSize: POINT
    end
  end
end