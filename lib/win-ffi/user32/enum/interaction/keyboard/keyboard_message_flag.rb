require 'win-ffi/user32'

module WinFFI
  module User32
    # WM_KEYUP/DOWN/CHAR HIWORD(lParam) flags
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646267(v=vs.85).aspx
    KeyboardMessageFlag = enum :keyboard_message_flag, [
        :EXTENDED, 0x0100,
        :DLGMODE,  0x0800,
        :MENUMODE, 0x1000,
        :ALTDOWN,  0x2000,
        :REPEAT,   0x4000,
        :UP,       0x8000
    ]

    define_prefix(:KF, KeyboardMessageFlag)
  end
end