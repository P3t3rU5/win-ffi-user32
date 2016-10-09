require 'win-ffi/user32'

module WinFFI
  module User32
    # Not defined
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms724336(v=vs.85).aspx
    KeyboardType = enum :keyboard_type, [
        :IBM_83_KEYS,         1,
        :OLIVETTI_102_KEYS,   2,
        :IBM_84_KEYS,         3,
        :IBM_101_102_KEYS,    4,
        :NOKIA_1050_KEYBOARD, 5,
        :NOKIA_9140_KEYBOARD, 6,
        :JAPANESE_KEYBOARD,   7,
    ]
  end
end