require 'win-ffi/user32'

module WinFFI
  module User32
    if WindowsVersion >= 8
      # Pointer info key states defintions.
      PointerModifierKeyState = enum :pointer_modifier_key_state, [
          :SHIFT, 0x0004, # Shift key is held down.
          :CTRL,  0x0008  # Ctrl key is held down.
      ]

      define_prefix(:POINTER_MOD, PointerModifierKeyState)
    end
  end
end