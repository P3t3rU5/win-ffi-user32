module WinFFI
  module User32
    # Key State Masks for Mouse Messages
    # https://docs.microsoft.com/en-us/windows/desktop/inputdev/wm-lbuttondown#parameters
    MouseKeysState = enum :mouse_keys_state, [
      :LBUTTON,  0x0001,
      :RBUTTON,  0x0002,
      :SHIFT,    0x0004,
      :CTRL,     0x0008,
      :CONTROL,  0x0008,
      :MBUTTON,  0x0010,
      :XBUTTON1, 0x0020,
      :XBUTTON2, 0x0040
    ]

    define_prefix(:MK, MouseKeysState)
  end
end