require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # Raw Input Device Information
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645597(v=vs.85).aspx
      RawInputDeviceInformation = enum :rawinput_device_information, [
          :PREPARSEDDATA,      0x20000005,
          :DEVICENAME,         0x20000007,  # the return valus is the character length, not the byte size
          :DEVICEINFO,         0x2000000b
      ]

      define_prefix(:RIDI, RawInputDeviceInformation)
    end
  end
end