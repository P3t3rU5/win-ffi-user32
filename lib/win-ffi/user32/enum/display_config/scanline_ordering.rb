module WinFFI
  module User32
    DisplayConfigScanlineOrdering = enum :displayconfig_scanline_ordering, [
        :UNSPECIFIED,                0,
        :PROGRESSIVE,                1,
        :INTERLACED,                 2,
        :INTERLACED_UPPERFIELDFIRST, 2,
        :INTERLACED_LOWERFIELDFIRST, 3,
        :FORCE_UINT32,               0xFFFFFFFF
    ]

    define_prefix(:DISPLAYCONFIG_SCANLINE_ORDERING, DisplayConfigScanlineOrdering)
  end
end