require_relative '../../../../../win-ffi/user32'

module WinFFI
  module User32
    # Low level hook flags
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644967(v=vs.85).aspx
    LowLevelKeyboardHookFlag = enum :low_level_keyboard_hook_flag, [
        :EXTENDED,          0x00000001,
        :INJECTED,          0x00000010,
        :ALTDOWN,           0x00000020,
        :UP,                0x00000080,
        :LOWER_IL_INJECTED, 0x00000002,
    ]

    define_prefix(:LLKHF, LowLevelKeyboardHookFlag)
  end
end