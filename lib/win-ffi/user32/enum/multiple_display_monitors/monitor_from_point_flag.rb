require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd145062(v=vs.85).aspx
    MonitorFromPointFlag = enum :monitor_from_point_flag, [
        :DEFAULTTONULL,    0x00000000,
        :DEFAULTTOPRIMARY, 0x00000001,
        :DEFAULTTONEAREST, 0x00000002
    ]

    define_prefix(:MONITOR, MonitorFromPointFlag)
  end
end