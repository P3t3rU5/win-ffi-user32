require 'win-ffi/msftedit'

module WinFFI
  module Msftedit
    ManCode = enum :man_code, [
        :BOLD,  0x10,
        :ITAL,  0x20,
        :GREEK, 0x40,
        :ROMN,     0,
        :SCRP,     1,
        :FRAK,     2,
        :OPEN,     3,
        :SANS,     4,
        :MONO,     5,
        :MATH,     6,
        :ISOL,     7,
        :INIT,     8,
        :TAIL,     9,
        :STRCH,   10,
        :LOOP,    11,
        :OPENA,   12
    ]

    define_prefix(:M, ManCode, true)
  end
end