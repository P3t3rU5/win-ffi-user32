module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      # AutoRotation state structure
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ne-winuser-tagar_state
      AutoRotationState = enum :auto_rotation_state, [
          :ENABLED,        0x0,
          :DISABLED,       0x1,
          :SUPPRESSED,     0x2,
          :REMOTESESSION,  0x4,
          :MULTIMON,       0x8,
          :NOSENSOR,      0x10,
          :NOT_SUPPORTED, 0x20,
          :DOCKED,        0x40,
          :LAPTOP,        0x80
      ]

      define_prefix(:AR, AutoRotationState)
    end
  end
end
