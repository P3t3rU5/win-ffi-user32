module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/bm-getstate
    ButtonState = enum :button_state, [
        :UNCHECKED,     0x0000,
        :CHECKED,       0x0001,
        :INDETERMINATE, 0x0002,
        :PUSHED,        0x0004,
        :FOCUS,         0x0008
    ]

    define_prefix(:BST, ButtonState)
  end
end