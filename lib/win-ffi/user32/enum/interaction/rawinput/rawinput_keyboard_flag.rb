require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= :xp
    module User32
      # Define the keyboard input data Flags.
      RawInputKeybpardFlag = enum :rawinput_keybpard_flag, [
          :MAKE,            0x00,
          :BREAK,           0x01,
          :E0,              0x02,
          :E1,              0x04,
          :TERMSRV_SET_LED, 0x08,
          :TERMSRV_SHADOW,  0x10
      ]

      define_prefix(:RI_KEY, RawInputKeybpardFlag)
    end
  end
end
