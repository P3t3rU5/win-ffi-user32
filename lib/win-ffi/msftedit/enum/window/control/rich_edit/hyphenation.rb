require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # khyph - Kind of hyphenation
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb774363(v=vs.85).aspx
      Hyphenation = enum :hyphenation, [
          :Nil,
          :Normal,
          :AddBefore,
          :ChangeBefore,
          :DeleteBefore,
          :ChangeAfter,
          :DelAndChange
      ]

      define_prefix(:Khyph, Hyphenation, true)
    end
  end
end