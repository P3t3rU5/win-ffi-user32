module WinFFI
  if WINDOWS_VERSION >= :xp
    require_relative '../enum/device_notify_flag'

    module User32
      typedef :pointer, :hdevnotify

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registerdevicenotificationa
      # HDEVNOTIFY RegisterDeviceNotification(_In_ HANDLE hRecipient, _In_ LPVOID NotificationFilter, _In_ DWORD Flags)
      def self.RegisterDeviceNotification(hRecipient, notificationFilter, flags); end
      encoded_function 'RegisterDeviceNotification', [:handle, :pointer, DeviceNotifyFlag], :hdevnotify

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-unregisterdevicenotification
      # BOOL UnregisterDeviceNotification( _In_  HDEVNOTIFY Handle )
      def self.UnregisterDeviceNotification(handle); end
      attach_function 'UnregisterDeviceNotification', [:hdevnotify], :bool
    end
  end
end