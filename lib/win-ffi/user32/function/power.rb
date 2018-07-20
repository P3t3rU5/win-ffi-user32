module WinFFI
  if WINDOWS_VERSION >= 2003
    require 'win-ffi/core/struct/guid'

    require_relative '../enum/device_notify_flag'

    module User32

      typedef :pointer, :hpowernotify

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registerpowersettingnotification
      # HPOWERNOTIFY RegisterPowerSettingNotification(
      #   _In_  HANDLE hRecipient,
      #   _In_  LPCGUID PowerSettingGuid,
      #   _In_  DWORD Flags )
      def self.RegisterPowerSettingNotification(hRecipient, powerSettingGuid, flags) end
      attach_function 'RegisterPowerSettingNotification',
                      [:handle, GUID.ptr(:in), DeviceNotifyFlag], :hpowernotify

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-unregisterpowersettingnotification
      # BOOL UnregisterPowerSettingNotification( _In_  HPOWERNOTIFY Handle )
      def self.UnregisterPowerSettingNotification(handle) end
      attach_function 'UnregisterPowerSettingNotification', [:hpowernotify], :bool

      if WINDOWS_VERSION >= 8
        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registersuspendresumenotification
        # HPOWERNOTIFY RegisterSuspendResumeNotification( _In_ HANDLE hRecipient, _In_ DWORD  Flags)
        def self.RegisterSuspendResumeNotification(hRecipient, flags) end
        attach_function 'RegisterSuspendResumeNotification', [:pointer, DeviceNotifyFlag], :hpowernotify

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-unregistersuspendresumenotification
        # BOOL WINUSERAPI UnregisterSuspendResumeNotification( _Inout_  HPOWERNOTIFY RegistrationHandle )
        def self.UnregisterSuspendResumeNotification(registrationHandle) end
        attach_function 'UnregisterSuspendResumeNotification', [:hpowernotify], :bool
      end
    end
  end
end