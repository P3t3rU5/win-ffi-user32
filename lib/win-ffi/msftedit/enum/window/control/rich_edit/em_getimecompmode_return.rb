require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # Values for EM_GETIMECOMPMODE
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb788035(v=vs.85).aspx
      EmGetimecompmodeReturn = enum :em_getimecompmode_return, [
          :NOTOPEN,    0x0000,
          :LEVEL3,     0x0001,
          :LEVEL2,     0x0002,
          :LEVEL2_5,   0x0003,
          :LEVEL2_SUI, 0x0004,
          :CTF,        0x0005,
      ]

      define_prefix(:ICM, EmGetimecompmodeReturn)
    end
  end
end