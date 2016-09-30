require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # PARAFORMAT numbering options
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787942(v=vs.85).aspx
      ParaformatNumbering = enum :paraformat_numbering, [
          :BULLET,   1,
          :ARABIC,   2,
          :LCLETTER, 3,
          :UCLETTER, 4,
          :LCROMAN,  5,
          :UCROMAN,  6,
      ]

      define_prefix(:PFN, ParaformatNumbering)
    end
  end
end