module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaydevicesa#parameters
    EnumDisplayDevicesFlag = enum :enum_display_devices_flag, [:GET_DEVICE_INTERFACE_NAME, 0x00000001]

    define_prefix(:EDD, EnumDisplayDevicesFlag)
  end
end