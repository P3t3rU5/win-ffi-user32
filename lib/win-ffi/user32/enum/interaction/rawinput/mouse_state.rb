module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # Define the mouse button state indicators.
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645578
      buffer = [
          :LEFT_BUTTON_DOWN,   0x0001,
          :LEFT_BUTTON_UP,     0x0002,
          :RIGHT_BUTTON_DOWN,  0x0004,
          :RIGHT_BUTTON_UP,    0x0008,
          :MIDDLE_BUTTON_DOWN, 0x0010,
          :MIDDLE_BUTTON_UP,   0x0020,
          :BUTTON_1_DOWN,      0x0001,
          :BUTTON_1_UP,        0x0002,
          :BUTTON_2_DOWN,      0x0004,
          :BUTTON_2_UP,        0x0008,
          :BUTTON_3_DOWN,      0x0010,
          :BUTTON_3_UP,        0x0020,
          :BUTTON_4_DOWN,      0x0040,
          :BUTTON_4_UP,        0x0080,
          :BUTTON_5_DOWN,      0x0100,
          :BUTTON_5_UP,        0x0200,
          :WHEEL,              0x0400
      ]

      buffer += [:HWHEEL, 0x0800] if WINDOWS_VERSION >= :vista

      RawInputMouseState = enum :rawinput_mouse_state, buffer

      define_prefix(:RI_MOUSE, RawInputMouseState)
    end
  end
end