module WinFFI
  module User32
    # Scroll bar messages
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-scroll-bars-reference-messages
    buffer = [
        :SETPOS,         0x00E0,
        :GETPOS,         0x00E1,
        :SETRANGE,       0x00E2,
        :SETRANGEREDRAW, 0x00E6,
        :GETRANGE,       0x00E3,
        :ENABLE_ARROWS,  0x00E4,
        :SETSCROLLINFO,  0x00E9,
        :GETSCROLLINFO,  0x00EA,
    ]

    buffer += [:GETSCROLLBARINFO, 0x00EB] if WINDOWS_VERSION >= :xp

    ScrollbarMessage = enum :scrollbar_message, buffer

    define_prefix(:SBM, ScrollbarMessage)
  end
end