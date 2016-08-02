require 'win-ffi/user32'

module WinFFI
  module User32
    # Keyboard Layout API
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646289(v=vs.85).aspx
    KeyboardLayoutHandle = enum :keyboard_layout_handle, [
        :PREV, 0,
        :NEXT, 1,
    ]

    define_prefix(:HKL, KeyboardLayoutHandle)
  end
end