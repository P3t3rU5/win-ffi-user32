require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # CHARFORMAT effects
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787942(v=vs.85).aspx
      ParaformatEffect = enum :paraformat_effect, [
          :RTLPARA,           0x00000001,
          :KEEP,              0x00000002,
          :KEEPNEXT,          0x00000004,
          :PAGEBREAKBEFORE,   0x00000008,
          :NOLINENUMBER,      0x00000010,
          :NOWIDOWCONTROL,    0x00000020,
          :DONOTHYPHEN,       0x00000040,
          :SIDEBYSIDE,        0x00000080,
          :TEXTWRAPPINGBREAK, 0x00002000,

          :COLLAPSED,         0x00000100,
          :BOX,               0x00000400,
          :TABLE,             0x00004000,
          :TABLEROWDELIMITER, 0x00001000,
      ]

      define_prefix(:PFE, ParaformatEffect)
    end
  end
end