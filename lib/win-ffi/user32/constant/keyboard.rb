require 'win-ffi/user32'

module WinFFI
  module User32
    # Size of KeyboardLayoutName (number of characters), including nul terminator
    KL_NAMELENGTH = 9

    if WindowsVersion >= 7
      # Define the keyboard overrun MakeCode.
      KEYBOARD_OVERRUN_MAKE_CODE = 0xFF
    end
  end
end