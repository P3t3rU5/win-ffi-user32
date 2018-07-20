module WinFFI
  module User32
    DisplayConfigRotation = enum :display_config_rotation, [
        :IDENTITY,     1,
        :ROTATE90,     2,
        :ROTATE180,    3,
        :ROTATE270,    4,
        :FORCE_UINT32, 0xFFFFFFFF
    ]

    define_prefix(:DISPLAYCONFIG_ROTATION, DisplayConfigRotation)
  end
end