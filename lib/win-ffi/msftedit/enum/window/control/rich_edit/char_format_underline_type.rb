require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # Underline types. RE 1.0 displays only CFU_UNDERLINE
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787883(v=vs.85).aspx
      CharFormatUnderlineType = enum :char_format_underline_type, [
          :CF1UNDERLINE,           0xFF,
          :INVERT,                 0xFE,
          :UNDERLINETHICKLONGDASH,   18,
          :UNDERLINETHICKDOTTED,     17,
          :UNDERLINETHICKDASHDOTDOT, 16,
          :UNDERLINETHICKDASHDOT,    15,
          :UNDERLINETHICKDASH,       14,
          :UNDERLINELONGDASH,        13,
          :UNDERLINEHEAVYWAVE,       12,
          :UNDERLINEDOUBLEWAVE,      11,
          :UNDERLINEHAIRLINE,        10,
          :UNDERLINETHICK,            9,
          :UNDERLINEWAVE,             8,
          :UNDERLINEDASHDOTDOT,       7,
          :UNDERLINEDASHDOT,          6,
          :UNDERLINEDASH,             5,
          :UNDERLINEDOTTED,           4,
          :UNDERLINEDOUBLE,           3,
          :UNDERLINEWORD,             2,
          :UNDERLINE,                 1,
          :UNDERLINENONE,             0,
      ]

      define_prefix(:CFU, CharFormatUnderlineType)
    end
  end
end