module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registerdevicenotificationa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registerdevicenotificationw
    buffer = [:WINDOW_HANDLE, 0x00000000,:SERVICE_HANDLE, 0x00000001]

    buffer += [:ALL_INTERFACE_CLASSES, 0x00000004] if WINDOWS_VERSION >= :xp

    DeviceNotifyFlag = enum :device_notify_flag, buffer

    define_prefix(:DEVICE_NOTIFY, DeviceNotifyFlag)
  end
end