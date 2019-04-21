module WinFFI
  if WINDOWS_VERSION >= :xp
    require_relative '../enum/device_notify_flag'

    module User32
      typedef :pointer, :hdevnotify

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registerdevicenotificationa
      # @param [FFI::Pointer] hRecipient
      # @param [FFI::Pointer] notificationFilter
      # @param [Integer] flags
      # @return [FFI::Pointer]
      def self.RegisterDeviceNotification(hRecipient, notificationFilter, flags); end
      encoded_function 'RegisterDeviceNotification', [:handle, :pointer, DeviceNotifyFlag], :hdevnotify

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-unregisterdevicenotification
      # @param [FFI::Pointer] handle
      # @return [true, false]
      def self.UnregisterDeviceNotification(handle); end
      attach_function 'UnregisterDeviceNotification', [:hdevnotify], :bool
    end
  end
end