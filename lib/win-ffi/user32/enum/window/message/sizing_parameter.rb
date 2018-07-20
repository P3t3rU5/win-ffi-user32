module WinFFI
  module User32
    # wParam for WM_SIZING message
    # https://docs.microsoft.com/en-us/windows/desktop/winmsg/wm-sizing#parameters
    WmSizingParameter = enum :wm_sizing_parameter, [
        :LEFT,        1,
        :RIGHT,       2,
        :TOP,         3,
        :TOPLEFT,     4,
        :TOPRIGHT,    5,
        :BOTTOM,      6,
        :BOTTOMLEFT,  7,
        :BOTTOMRIGHT, 8,
    ]

    define_prefix(:WMSZ, WmSizingParameter)
  end
end