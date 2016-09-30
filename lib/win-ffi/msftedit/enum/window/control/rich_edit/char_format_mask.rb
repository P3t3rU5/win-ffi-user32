require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # CHARFORMAT masks
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787881(v=vs.85).aspx
      CharFormatMask = enum :char_format_mask, [
          :BOLD,          0x00000001,
          :ITALIC,        0x00000002,
          :UNDERLINE,     0x00000004,
          :STRIKEOUT,     0x00000008,
          :PROTECTED,     0x00000010,
          :LINK,          0x00000020,
          :SIZE,          0x80000000,
          :COLOR,         0x40000000,
          :FACE,          0x20000000,
          :OFFSET,        0x10000000,
          :CHARSET,       0x08000000,

          :SMALLCAPS,     0x00000040,
          :ALLCAPS,       0x00000080,
          :HIDDEN,        0x00000100,
          :OUTLINE,       0x00000200,
          :SHADOW,        0x00000400,
          :EMBOSS,        0x00000800,
          :IMPRINT,       0x00001000,
          :DISABLED,      0x00002000,
          :REVISED,       0x00004000,
          :REVAUTHOR,     0x00008000,

          :ANIMATION,     0x00040000,
          :STYLE,         0x00080000,
          :KERNING,       0x00100000,
          :SPACING,       0x00200000,
          :WEIGHT,        0x00400000,
          :UNDERLINETYPE, 0x00800000,

          :COOKIE,        0x01000000,
          :LCID,          0x02000000,
          :BACKCOLOR,     0x04000000,

          :SUBSCRIPT,     0x00030000,
          :SUPERSCRIPT,   0x00030000,

          :EFFECTS,       0x4000003F,

          :ALL,           0xf800003F,

          :EFFECTS2,      0x44037FFF,

          :ALL2,          0xFFFFFFFF,

          :FONTBOUND,     0x00100000,
          :LINKPROTECTED, 0x00800000,
          :EXTENDED,      0x02000000,
          :MATHNOBUILDUP, 0x08000000,
          :MATH,          0x10000000,
          :MATHORDINARY,  0x20000000,

          :ALLEFFECTS,    0X7E137FFF,
      ]

      define_prefix(:CFM, CharFormatMask)
    end
  end
end