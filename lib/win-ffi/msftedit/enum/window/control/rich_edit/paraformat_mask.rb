require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Msftedit
      # PARAFORMAT mask values
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787940(v=vs.85).aspx
      ParaformatMask = enum :paraformat_mask, [
          :STARTINDENT,       0x00000001,
          :RIGHTINDENT,       0x00000002,
          :OFFSET,            0x00000004,
          :ALIGNMENT,         0x00000008,
          :TABSTOPS,          0x00000010,
          :NUMBERING,         0x00000020,
          :OFFSETINDENT,      0x80000000,

          :SPACEBEFORE,       0x00000040,
          :SPACEAFTER,        0x00000080,
          :LINESPACING,       0x00000100,
          :STYLE,             0x00000400,
          :BORDER,            0x00000800,
          :SHADING,           0x00001000,
          :NUMBERINGSTYLE,    0x00002000,
          :NUMBERINGTAB,      0x00004000,
          :NUMBERINGSTART,    0x00008000,

          :RTLPARA,           0x00010000,
          :KEEP,              0x00020000,
          :KEEPNEXT,          0x00040000,
          :PAGEBREAKBEFORE,   0x00080000,
          :NOLINENUMBER,      0x00100000,
          :NOWIDOWCONTROL,    0x00200000,
          :DONOTHYPHEN,       0x00400000,
          :SIDEBYSIDE,        0x00800000,

          :COLLAPSED,         0x01000000,
          :OUTLINELEVEL,      0x02000000,
          :BOX,               0x04000000,
          :RESERVED2,         0x08000000,
          :TABLEROWDELIMITER, 0x10000000,
          :TEXTWRAPPINGBREAK, 0x20000000,
          :TABLE,             0x40000000,

          :ALL,               0x8001003F,

          :EFFECTS,           0x50FF0000,

          :ALL2,              0xD0FFFDFF,
      ]

      define_prefix(:PFM, ParaformatMask)
    end
  end
end