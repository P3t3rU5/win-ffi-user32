module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms679348(v=vs.85).aspx
    FlashWindowFlag = enum :flash_window_flag, [
        :STOP,      0x00000000,
        :CAPTION,   0x00000001,
        :TRAY,      0x00000002,
        :ALL,       0x00000003,
        :TIMER,     0x00000004,
        :TIMERNOFG, 0x0000000C,
    ]

    define_prefix(:FLASHW, FlashWindowFlag)
  end
end