module WinFFI
  module User32
    # Size of KeyboardLayoutName (number of characters), including nul terminator
    KL_NAMELENGTH = 9

    # Define the keyboard overrun MakeCode.
    # RAWINPUT
    KEYBOARD_OVERRUN_MAKE_CODE = 0xFF if WINDOWS_VERSION >= 7
  end
end