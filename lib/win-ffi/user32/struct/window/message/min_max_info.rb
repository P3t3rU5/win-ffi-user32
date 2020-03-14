require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    # Struct pointed to by WM_GETMINMAXINFO lParam
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-minmaxinfo
    class MINMAXINFO < FFIAdditions::Struct
      attr_accessor :ptReserved,
                    :ptMaxSize,
                    :ptMaxPosition,
                    :ptMinTrackSize,
                    :ptMaxTrackSize

      layout ptReserved:     POINT,
             ptMaxSize:      POINT,
             ptMaxPosition:  POINT,
             ptMinTrackSize: POINT,
             ptMaxTrackSize: POINT
    end
  end
end