module WinFFI
  module User32
    # Flags for EVENT_CONSOLE_CARET
    # https://docs.microsoft.com/en-us/windows/console/console-winevents
    ConsoleCaret = enum :console_caret, [
        :SELECTION, 0x0001,
        :VISIBLE,   0x0002,
    ]

    define_prefix(:CONSOLE_CARET, ConsoleCaret)
  end
end