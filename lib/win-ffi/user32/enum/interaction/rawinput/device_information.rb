module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # Raw Input Device Information
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645597
      RawInputDeviceInformation = enum :rawinput_device_information, [
          :PREPARSEDDATA, 0x20000005,
          :DEVICENAME,    0x20000007,
          :DEVICEINFO,    0x2000000B
      ]

      define_prefix(:RIDI, RawInputDeviceInformation)
    end
  end
end