module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-monitorfrompoint
    MonitorFromPointFlag = enum :monitor_from_point_flag, [
        :DEFAULTTONULL,    0x00000000,
        :DEFAULTTOPRIMARY, 0x00000001,
        :DEFAULTTONEAREST, 0x00000002
    ]

    define_prefix(:MONITOR, MonitorFromPointFlag)
  end
end