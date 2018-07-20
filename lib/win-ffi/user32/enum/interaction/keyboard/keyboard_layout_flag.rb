module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646289
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646305
    KeyboardLayoutFlag = enum :keyboard_layout_flag, [
        :ACTIVATE,      0x00000001,
        :SUBSTITUTE_OK, 0x00000002,
        :REORDER,       0x00000008,
        :REPLACELANG,   0x00000010,
        :NOTELLSHELL,   0x00000080,
        :SETFORPROCESS, 0x00000100,
        :SHIFTLOCK,     0x00010000,
        :RESET,         0x40000000,
    ]

    define_prefix(:KLF, KeyboardLayoutFlag)
  end
end