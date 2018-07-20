module WinFFI
  module User32
    buffer = [
        :REMOVE,       0x00000001,
        :EXCLUDE,      0x00000010,
        :PAGEONLY,     0x00000020,
        :NOLEGACY,     0x00000030,
        :INPUTSINK,    0x00000100,
        :CAPTUREMOUSE, 0x00000200,
        :NOHOTKEYS,    0x00000200,
        :APPKEYS,      0x00000400,
        :EXMODEMASK,   0x000000F0
    ]

    buffer += [:EXINPUTSINK, 0x00001000, :DEVNOTIFY, 0x00002000] if WINDOWS_VERSION >= :xp

    RawInputDeviceFlag = enum :rawinput_device_flag, buffer

    define_prefix(:RIDEV, RawInputDeviceFlag)
  end
end