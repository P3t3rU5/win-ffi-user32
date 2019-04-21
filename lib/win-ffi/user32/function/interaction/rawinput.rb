module WinFFI
  if WINDOWS_VERSION >= :xp
    require_relative '../../struct/interaction/rawinput'

    require_relative '../../enum/interaction/rawinput/data'
    require_relative '../../enum/interaction/rawinput/device_information'

    module User32
      typedef :handle, :hrawinput

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645594
      # @param [FFI::Pointer] paRawInput
      # @param [Integer] nInput
      # @param [Integer] cbSizeHeader
      # @return [Integer]
      def self.DefRawInputProc(paRawInput, nInput, cbSizeHeader) end
      attach_function 'DefRawInputProc', [:pointer, :int, :uint], :lresult

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645595
      # Raw Input Bulk Read: GetRawInputBuffer
      # @param [FFI::Pointer] pData
      # @param [FFI::Pointer] pcbSize
      # @param [Integer] cbSizeHeader
      # @return [Integer]
      def self.GetRawInputBuffer(pData, pcbSize, cbSizeHeader) end
      attach_function 'GetRawInputBuffer', [:pointer, :pointer, :uint], :uint

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645596
      # @param [FFI::Pointer] hRawInput
      # @param [Integer] uiCommand
      # @param [FFI::Pointer] pData
      # @param [FFI::Pointer] pcbSize
      # @param [Integer] cbSizeHeader
      # @return [Integer]
      def self.GetRawInputData(hRawInput, uiCommand, pData, pcbSize, cbSizeHeader) end
      attach_function 'GetRawInputData', [RAWINPUT.ptr(:in), RawInputData, :pointer, :pointer, :uint], :uint

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645597
      # @param [FFI::Pointer] hDevice
      # @param [Integer] uiCommand
      # @param [FFI::Pointer] pData
      # @param [FFI::Pointer] pcbSize
      # @return [Integer]
      def self.GetRawInputDeviceInfo(hDevice, uiCommand, pData, pcbSize) end
      encoded_function 'GetRawInputDeviceInfo', [:handle, RawInputDeviceInformation, :pointer, :pointer], :uint

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645598
      # @param [FFI::Pointer] pRawInputDeviceList
      # @param [FFI::Pointer] puiNumDevices
      # @param [Integer] cbSize
      # @return [Integer]
      def self.GetRawInputDeviceList(pRawInputDeviceList, puiNumDevices, cbSize) end
      attach_function 'GetRawInputDeviceList', [RAWINPUTDEVICELIST.ptr(:out), :pointer, :uint], :uint

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645599
      # @param [FFI::Pointer] pRawInputDevices
      # @param [FFI::Pointer] puiNumDevices
      # @param [Integer] cbSize
      # @return [Integer]
      def self.GetRegisteredRawInputDevices(pRawInputDevices, puiNumDevices, cbSize) end
      attach_function 'GetRegisteredRawInputDevices', [RAWINPUTDEVICE.ptr(:out), :pointer, :uint], :uint

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645600
      # @param [FFI::Pointer] pRawInputDevices
      # @param [Integer] uiNumDevices
      # @param [Integer] cbSize
      # @return [true, false]
      def self.RegisterRawInputDevices(pRawInputDevices, uiNumDevices, cbSize) end
      attach_function 'RegisterRawInputDevices', [:pointer , :uint, :uint], :bool
    end
  end
end
