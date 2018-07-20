module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagscrollinfo
    ScrollbarInfoFlag = enum :scrollbar_info_flag, [
        :RANGE,           0x0001,
        :PAGE,            0x0002,
        :POS,             0x0004,
        :DISABLENOSCROLL, 0x0008,
        :TRACKPOS,        0x0010,
        :ALL,             0x0017
    ]

    define_prefix(:SIF, ScrollbarInfoFlag)
  end
end