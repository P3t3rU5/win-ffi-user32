module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646309
    buffer = [
        :ALT,      0x0001,
        :CTRL,     0x0002,
        :CONTROL,  0x0002,
        :SHIFT,    0x0004,
        :WIN,      0x0008,
        :WINDOWS,  0x0008,
    ]

    buffer += [:NOREPEAT, 0x4000] if WINDOWS_VERSION >= 7

    KeyboardModifier = enum :keyboard_modifier, buffer

    define_prefix(:MOD, KeyboardModifier)
  end
end