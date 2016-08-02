require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162609(v=vs.85).aspx
    EnumDisplayDevicesFlag = enum :enum_display_devices_flag, [
        :GET_DEVICE_INTERFACE_NAME, 0x00000001
    ]

    define_prefix(:EDD, EnumDisplayDevicesFlag)
  end
end