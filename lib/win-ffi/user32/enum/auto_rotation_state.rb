module WinFFI
  if WindowsVersion >= 7

    require 'win-ffi/user32'

    module User32
      # AutoRotation state structure
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dn629263(v=vs.85).aspx
      AutoRotationState = enum :auto_rotation_state, [
          :ENABLED,       0x0,
          :DISABLED,      0x1,
          :SUPPRESSED,    0x2,
          :REMOTESESSION, 0x4,
          :MULTIMON,      0x8,
          :NOSENSOR,      0x10,
          :NOT_SUPPORTED, 0x20,
          :DOCKED,        0x40,
          :LAPTOP,        0x80
      ]
    end
  end
end
