require 'win-ffi/user32'

module WinFFI
  module User32
    if WindowsVersion >= 8
      # Pointer info key states defintions.
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh969207(v=vs.85).aspx
      PointerModifierKeyState = enum :pointer_modifier_key_state, [
          :SHIFT, 0x0004,
          :CTRL,  0x0008
      ]

      define_prefix(:POINTER_MOD, PointerModifierKeyState)
    end
  end
end