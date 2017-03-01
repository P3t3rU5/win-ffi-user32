require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :xp
    module Msftedit
      # EM_SETPAGEROTATE wparam values
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb774256(v=vs.85).aspx
      buffer = [
          :'0',   0,
          :'270', 1,
          :'180', 2,
          :'90',  3,
      ]

      buffer += [:SE, 5,] if WINDOWS_VERSION >= 8

      EmSetpagerotateFlag = enum :em_setpagerotate_flag, buffer

      define_prefix(:ERR, EmSetpagerotateFlag)
    end
  end
end
