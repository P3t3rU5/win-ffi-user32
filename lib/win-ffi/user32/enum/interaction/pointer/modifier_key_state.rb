module WinFFI
  module User32
    if WINDOWS_VERSION >= 8
      # Pointer info key states defintions.
      # https://docs.microsoft.com/en-us/previous-versions/windows/desktop/inputmsg/modifier-key-states-constants
      PointerModifierKeyState = enum :pointer_modifier_key_state, [:SHIFT, 0x0004, :CTRL, 0x0008]

      define_prefix(:POINTER_MOD, PointerModifierKeyState)
    end
  end
end