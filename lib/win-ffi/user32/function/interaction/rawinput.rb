module WinFFI
  if WINDOWS_VERSION >= :xp
    require_relative '../../struct/interaction/rawinput'

    require_relative '../../enum/interaction/rawinput/data'
    require_relative '../../enum/interaction/rawinput/device_information'

    module User32
      typedef :handle, :hrawinput

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645594
      # LRESULT DefRawInputProc( _In_ PRAWINPUT *paRawInput, _In_ INT nInput, _In_ UINT cbSizeHeader )
      def self.DefRawInputProc(paRawInput, nInput, cbSizeHeader); end
      attach_function 'DefRawInputProc', [:pointer, :int, :uint], :lresult

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645595
      # Raw Input Bulk Read: GetRawInputBuffer
      # UINT GetRawInputBuffer( _Out_opt_ PRAWINPUT pData, _Inout_ PUINT pcbSize, _In_ UINT cbSizeHeader )
      def self.GetRawInputBuffer(pData, pcbSize, cbSizeHeader); end
      attach_function 'GetRawInputBuffer', [:pointer, :pointer, :uint], :uint

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645596
      # UINT GetRawInputData(
      #   _In_       HRAWINPUT hRawInput,
      #   _In_       UINT uiCommand,
      #   _Out_opt_  LPVOID pData,
      #   _Inout_    PUINT pcbSize,
      #   _In_       UINT cbSizeHeader )
      def self.GetRawInputData(hRawInput, uiCommand, pData, pcbSize, cbSizeHeader); end
      attach_function 'GetRawInputData', [RAWINPUT.ptr, RawInputData, :pointer, :pointer, :uint], :uint

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645597
      # UINT GetRawInputDeviceInfo(
      #   _In_opt_     HANDLE hDevice,
      #   _In_         UINT uiCommand,
      #   _Inout_opt_  LPVOID pData,
      #   _Inout_      PUINT pcbSize )
      def self.GetRawInputDeviceInfo(hDevice, uiCommand, pData, pcbSize); end
      encoded_function 'GetRawInputDeviceInfo', [:handle, RawInputDeviceInformation, :pointer, :pointer], :uint

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645598
      # UINT GetRawInputDeviceList(
      #   _Out_opt_  PRAWINPUTDEVICELIST pRawInputDeviceList,
      #   _Inout_    PUINT puiNumDevices,
      #   _In_       UINT cbSize )
      def self.GetRawInputDeviceList(pRawInputDeviceList, puiNumDevices, cbSize); end
      attach_function 'GetRawInputDeviceList', [RAWINPUTDEVICELIST.ptr, :pointer, :uint], :uint

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645599
      # UINT GetRegisteredRawInputDevices(
      #   _Out_opt_  PRAWINPUTDEVICE pRawInputDevices,
      #   _Inout_    PUINT puiNumDevices,
      #   _In_       UINT cbSize )
      def self.GetRegisteredRawInputDevices(pRawInputDevices, puiNumDevices, cbSize); end
      attach_function 'GetRegisteredRawInputDevices', [RAWINPUTDEVICE.ptr, :pointer, :uint], :uint

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645600
      # BOOL RegisterRawInputDevices(
      #   _In_  PCRAWINPUTDEVICE pRawInputDevices,
      #   _In_  UINT uiNumDevices,
      #   _In_  UINT cbSize )
      def self.RegisterRawInputDevices(pRawInputDevices, uiNumDevices, cbSize); end
      attach_function 'RegisterRawInputDevices', [:pointer , :uint, :uint], :bool
    end
  end
end
