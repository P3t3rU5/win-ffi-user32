require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Msftedit
      # PARAFORMAT alignment options
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787942(v=vs.85).aspx
      ParaformatAlignment = enum :paraformat_alignment, [
          :LEFT,             1,
          :RIGHT,            2,
          :CENTER,           3,
          :JUSTIFY,          4,
          :FULL_INTERWORD,   4,

          :FULL_NEWSPAPER,   5,
          :FULL_INTERLETTER, 6,
          :FULL_SCALED,      7,
          :FULL_GLYPHS,      8,
      ]

      define_prefix(:PFA, ParaformatAlignment)
    end
  end
end