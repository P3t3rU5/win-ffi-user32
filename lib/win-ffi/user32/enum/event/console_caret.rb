require 'win-ffi/user32'

module WinFFI
  module User32
    # Flags for EVENT_CONSOLE_CARET
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682102(v=vs.85).aspx
    ConsoleCaret = enum :console_caret, [
        :SELECTION, 0x0001,
        :VISIBLE,   0x0002,
    ]

    define_prefix(:CONSOLE_CARET, ConsoleCaret)
  end
end