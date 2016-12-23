require 'win-ffi/user32'

module WinFFI
  module User32
    # Values for resolution parameter of GetMouseMovePointsEx
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646259(v=vs.85).aspx
    GetMouseMovePointsFlag = enum :get_mouse_move_point_flag, [
        :DISPLAY_POINTS,         1,
        :HIGH_RESOLUTION_POINTS, 2
    ]

    define_prefix(:GMMP_USE, GetMouseMovePointsFlag)
  end
end