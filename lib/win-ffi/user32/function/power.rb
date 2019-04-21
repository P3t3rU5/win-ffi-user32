module WinFFI
  if WINDOWS_VERSION >= 2003
    require 'win-ffi/core/struct/guid'

    require_relative '../enum/device_notify_flag'

    module User32

      typedef :pointer, :hpowernotify

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registerpowersettingnotification
      # @param [FFI::Pointer] hRecipient
      # @param [FFI::Pointer] powerSettingGuid
      # @param [Integer] flags
      # @return [FFI::Pointer]
      def self.RegisterPowerSettingNotification(hRecipient, powerSettingGuid, flags) end
      attach_function 'RegisterPowerSettingNotification',
                      [:handle, GUID.ptr(:in), DeviceNotifyFlag], :hpowernotify

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-unregisterpowersettingnotification
      # @param [FFI::Pointer] handle
      # @return [true, false]
      def self.UnregisterPowerSettingNotification(handle) end
      attach_function 'UnregisterPowerSettingNotification', [:hpowernotify], :bool

      if WINDOWS_VERSION >= 8
        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registersuspendresumenotification
        # @param [FFI::Pointer] hRecipient
        # @param [Integer] flags
        # @return [FFI::Pointer]
        def self.RegisterSuspendResumeNotification(hRecipient, flags) end
        attach_function 'RegisterSuspendResumeNotification', [:pointer, DeviceNotifyFlag], :hpowernotify

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-unregistersuspendresumenotification
        # @param [FFI::Pointer] registrationHandle
        # @return [true, false]
        def self.UnregisterSuspendResumeNotification(registrationHandle) end
        attach_function 'UnregisterSuspendResumeNotification', [:hpowernotify], :bool
      end
    end
  end
end