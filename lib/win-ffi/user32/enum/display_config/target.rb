module WinFFI
  module User32
    # Status flags for target info structure (from OS to application through QDC)
    DisplayConfigTarget = enum :dispaly_config_target, [
        :IN_USE,                     0x00000001,
        :FORCIBLE,                   0x00000002,
        :FORCED_AVAILABILITY_BOOT,   0x00000004,
        :FORCED_AVAILABILITY_PATH,   0x00000008,
        :FORCED_AVAILABILITY_SYSTEM, 0x00000010,
        :IS_HMD,                     0x00000020
    ]

    define_prefix(:DISPLAYCONFIG_TARGET, DisplayConfigTarget)
  end
end