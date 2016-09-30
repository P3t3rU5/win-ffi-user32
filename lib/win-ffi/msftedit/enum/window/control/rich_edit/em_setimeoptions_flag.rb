require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= 8
    module Msftedit
      # East Asia specific flags
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb774248(v=vs.85).aspx
      EmSetimeoptionsFlag = enum :em_setimeoptions_flag, [
          :FORCENONE,         0x0001,
          :FORCEENABLE,       0x0002,
          :FORCEDISABLE,      0x0004,
          :CLOSESTATUSWINDOW, 0x0008,
          :VERTICAL,          0x0020,
          :FORCEACTIVE,       0x0040,
          :FORCEINACTIVE,     0x0080,
          :FORCEREMEMBER,     0x0100,
          :MULTIPLEEDIT,      0x0400,
      ]

      define_prefix(:IMF, EmSetimeoptionsFlag)
    end
  end
end