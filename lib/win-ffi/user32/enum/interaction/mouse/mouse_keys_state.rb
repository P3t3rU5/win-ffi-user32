require 'win-ffi/user32'

module WinFFI
  module User32
    # Key State Masks for Mouse Messages
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645607(v=vs.85).aspx
    MouseKeysState = enum :mouse_keys_state, [
      :LBUTTON,  0x0001,
      :RBUTTON,  0x0002,
      :SHIFT,    0x0004,
      :CTRL,     0x0008,
      :MBUTTON,  0x0010,
      :XBUTTON1, 0x0020,
      :XBUTTON2, 0x0040
    ]

    define_prefix(:MK, MouseKeysState)
  end
end