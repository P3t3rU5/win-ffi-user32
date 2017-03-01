module WinFFI
  if WINDOWS_VERSION >= 2003
    require 'win-ffi/user32'

    require 'win-ffi/user32/typedef/hpowernotify'

    require 'win-ffi/core/struct/guid'
    require 'win-ffi/user32/enum/device_notify_flag'

    module User32

      # https://msdn.microsoft.com/en-us/library/windows/desktop/aa373196(v=vs.85).aspx
      # HPOWERNOTIFY WINAPI RegisterPowerSettingNotification(
      #   _In_  HANDLE hRecipient,
      #   _In_  LPCGUID PowerSettingGuid,
      #   _In_  DWORD Flags )
      attach_function 'RegisterPowerSettingNotification', [:handle, GUID.ptr(:in), DeviceNotifyFlag], :hpowernotify

      # https://msdn.microsoft.com/en-us/library/windows/desktop/aa373237(v=vs.85).aspx
      # BOOL WINAPI UnregisterPowerSettingNotification( _In_  HPOWERNOTIFY Handle )
      attach_function 'UnregisterPowerSettingNotification', [:hpowernotify], :bool

      if WINDOWS_VERSION >= 8

        # https://msdn.microsoft.com/en-us/library/windows/desktop/jj613321(v=vs.85).aspx
        # HPOWERNOTIFY WINAPI RegisterSuspendResumeNotification(
        #   _In_ HANDLE hRecipient,
        #   _In_ DWORD  Flags)
        attach_function 'RegisterSuspendResumeNotification', [:pointer, DeviceNotifyFlag], :hpowernotify

        # https://msdn.microsoft.com/en-us/library/windows/desktop/jj613322(v=vs.85).aspx
        # BOOL WINUSERAPI UnregisterSuspendResumeNotification( _Inout_  HPOWERNOTIFY RegistrationHandle )
        attach_function 'UnregisterSuspendResumeNotification', [:hpowernotify], :bool
      end
    end
  end
end