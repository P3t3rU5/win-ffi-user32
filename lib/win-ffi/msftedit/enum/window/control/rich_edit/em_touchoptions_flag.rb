require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= 8
    module Msftedit
      # Values for EM_SETTOUCHOPTIONS/EM_GETTOUCHOPTIONS
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh768372(v=vs.85).aspx
      EmTouchoptionsFlag = enum :em_touchoptions_flag, [
          :SHOWHANDLES,    1,
          :DISABLEHANDLES, 2,
          :READINGMODE,    3,
      ]

      define_prefix(:RTO, EmTouchoptionsFlag)
    end
  end
end