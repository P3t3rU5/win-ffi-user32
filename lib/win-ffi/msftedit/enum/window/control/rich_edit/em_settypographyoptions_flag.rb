require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Msftedit
      # Options for EM_SETTYPOGRAPHYOPTIONS
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb774288(v=vs.85).aspx
      EmTypographyoptionsFlag = enum :em_typographyoptions_flag, [
          :ADVANCEDTYPOGRAPHY,   0x0001,
          :SIMPLELINEBREAK,      0x0002,
          :DISABLECUSTOMTEXTOUT, 0x0004,
          :ADVANCEDLAYOUT,       0x0008,
      ]

      define_prefix(:TO, EmTypographyoptionsFlag)
    end
  end
end