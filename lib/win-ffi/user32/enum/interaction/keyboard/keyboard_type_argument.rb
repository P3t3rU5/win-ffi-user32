require 'win-ffi/user32'

module WinFFI
  module User32
    # Not defined
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms724336(v=vs.85).aspx
    KeyboardTypeArgument = enum :keyboard_type_argument, [
        :TYPE,          0,
        :SUBTYPE,       1,
        :FUNCTION_KEYS, 2
    ]
  end
end