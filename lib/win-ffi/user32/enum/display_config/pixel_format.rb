module WinFFI
  module User32
    DisplayConfigPixelFormat = enum :display_config_pixel_format, [
        :PIXELFORMAT_8BPP,         1,
        :PIXELFORMAT_16BPP,        2,
        :PIXELFORMAT_24BPP,        3,
        :PIXELFORMAT_32BPP,        4,
        :PIXELFORMAT_NONGDI,       5,
        :PIXELFORMAT_FORCE_UINT32, 0XFFFFFFFF
    ]

    define_prefix(:DISPLAYCONFIG, DisplayConfigPixelFormat)
  end
end