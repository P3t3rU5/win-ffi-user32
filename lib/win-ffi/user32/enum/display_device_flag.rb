module WinFFI
  module User32
    buffer = [
        :ATTACHED_TO_DESKTOP,      0x00000001,
        :MULTI_DRIVER,             0x00000002,
        :PRIMARY_DEVICE,           0x00000004,
        :MIRRORING_DRIVER,         0x00000008,
        :VGA_COMPATIBLE,           0x00000010,
        :REMOVABLE,                0x00000020,
        :RDPUDD,                   0x01000000,
        :REMOTE,                   0x04000000,
        :DISCONNECT,               0x02000000,
        :MODESPRUNED,              0x08000000,
        :TS_COMPATIBLE,            0x00200000,
        # Child device state
        :ACTIVE,                   0x00000001,
        :ATTACHED,                 0x00000002
    ]

    if WINDOWS_VERSION >= :vista
      buffer += [:UNSAFE_MODES_ON, 0x00080000]
      buffer += [:ACC_DRIVER, 0x00000040] if WINDOWS_VERSION >= 8
    end

    DisplayDeviceFlag = enum :display_device_flag, buffer
  end
end