require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :xp
    module Msftedit
      # EM_SETIMEMODEBIAS lparam values
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb774246(v=vs.85).aspx
      EmSetimemodebiasFlag = enum :em_setimemodebias_flag, [
          :PLAURALCLAUSE, 0x0001,
          :NONE,          0x0002,
      ]

      define_prefix(:IMF_SMODE, EmSetimemodebiasFlag)
    end
  end
end