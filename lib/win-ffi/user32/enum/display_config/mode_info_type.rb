module WinFFI
  module User32
    DisplayConfigModeInfoType = enum :display_config_mode_info_type, [
        :SOURCE,        1,
        :TARGET,        2,
        :DESKTOP_IMAGE, 3,
        :FORCE_UINT32,  0xFFFFFFFF
    ]

    define_prefix(:DISPLAYCONFIG_MODE_INFO_TYPE, DisplayConfigModeInfoType)
  end
end