module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enablescrollbar#parameters
    EnableScrollBarFlag = enum :enable_scrollbar_flag, [
        :ENABLE_BOTH,   0x0000,
        :DISABLE_BOTH,  0x0003,

        :DISABLE_LEFT,  0x0001,
        :DISABLE_RIGHT, 0x0002,

        :DISABLE_UP,    0x0001,
        :DISABLE_DOWN,  0x0002,

        :DISABLE_LTUP,  0x0001,
        :DISABLE_RTDN,  0x0002
    ]

    define_prefix(:ESB, EnableScrollBarFlag)
  end
end