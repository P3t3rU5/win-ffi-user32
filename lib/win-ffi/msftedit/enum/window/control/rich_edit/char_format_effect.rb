require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # CHARFORMAT effects
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787881(v=vs.85).aspx
      CharFormatEffect = enum :char_format_effect, [
          :BOLD,          0x00000001,
          :TALIC,         0x00000002,
          :NDERLINE,      0x00000004,
          :TRIKEOUT,      0x00000008,
          :ROTECTED,      0x00000010,
          :INK,           0x00000020,
          :AUTOCOLOR,     0x40000000,

          :SUBSCRIPT,     0x00010000,
          :SUPERSCRIPT,   0x00020000,

          :SMALLCAPS,     0x00000040,
          :ALLCAPS,       0x00000080,
          :HIDDEN,        0x00000100,
          :OUTLINE,       0x00000200,
          :SHADOW,        0x00000400,
          :EMBOSS,        0x00000800,
          :IMPRINT,       0x00001000,
          :DISABLED,      0x00002000,
          :REVISED,       0x00004000,

          :AUTOBACKCOLOR, 0x04000000,

          :FONTBOUND,     0x00100000,
          :LINKPROTECTED, 0x00800000,
          :EXTENDED,      0x02000000,
          :MATHNOBUILDUP, 0x08000000,
          :MATH,          0x10000000,
          :MATHORDINARY,  0x20000000,
      ]

      define_prefix(:CFE, CharFormatEffect)
    end
  end
end