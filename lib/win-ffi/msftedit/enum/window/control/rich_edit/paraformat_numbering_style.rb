require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # PARAFORMAT2 wNumberingStyle options
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787942(v=vs.85).aspx
      ParaformatNumberingStyle = enum :paraformat_numbering_style, [
          :PAREN,     0x0000,
          :PARENS,    0x0100,
          :PERIOD,    0x0200,
          :PLAIN,     0x0300,
          :NONUMBER,  0x0400,
          :NEWNUMBER, 0x8000,
      ]

      define_prefix(:PFN, ParaformatNumberingStyle)
    end
  end
end