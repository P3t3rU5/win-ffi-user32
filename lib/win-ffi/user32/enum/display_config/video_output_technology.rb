module WinFFI
  module User32
    DisplayConfigVideoOutputTechnology = enum :display_config_video_output_technology, [
        :OTHER,                 -1,
        :HD15,                  0,
        :SVIDEO,                1,
        :COMPOSITE_VIDEO,       2,
        :COMPONENT_VIDEO,       3,
        :DVI,                   4,
        :HDMI,                  5,
        :LVDS,                  6,
        :D_JPN,                 8,
        :SDI,                   9,
        :DISPLAYPORT_EXTERNAL,  10,
        :DISPLAYPORT_EMBEDDED,  11,
        :UDI_EXTERNAL,          12,
        :UDI_EMBEDDED,          13,
        :SDTVDONGLE,            14,
        :MIRACAST,              15,
        :INTERNAL,              0x80000000,
        :FORCE_UINT32,          0xFFFFFFFF
    ]

    define_prefix(:DISPLAYCONFIG_OUTPUT_TECHNOLOGY, DisplayConfigVideoOutputTechnology)
  end
end