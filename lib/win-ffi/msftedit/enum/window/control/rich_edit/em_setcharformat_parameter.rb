require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # EM_SETCHARFORMAT wParam masks
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb774230(v=vs.85).aspx
      EmSetcharformatParameter = enum :em_setcharformat_parameter, [
          :SELECTION,       0x0001,
          :WORD,            0x0002,
          :DEFAULT,         0x0000,
          :ALL,             0x0004,
          :USEUIRULES,      0x0008,
          :ASSOCIATEFONT,   0x0010,
          :NOKBUPDATE,      0x0020,
          :ASSOCIATEFONT2,  0x0040,
          :SMARTFONT,       0x0080,
          :CHARREPFROMLCID, 0x0100,
      ]

      define_prefix(:SCF, EmSetcharformatParameter)
    end
  end
end