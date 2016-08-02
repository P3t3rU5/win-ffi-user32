require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/aa363431(v=vs.85).aspx
    buffer = [
      :WINDOW_HANDLE,  0x00000000,
      :SERVICE_HANDLE, 0x00000001,
    ]

    buffer += [:ALL_INTERFACE_CLASSES, 0x00000004,] if WindowsVersion >= :xp

    DeviceNotifyFlag = enum :device_notify_flag, buffer

    define_prefix(:DEVICE_NOTIFY, DeviceNotifyFlag)
  end
end