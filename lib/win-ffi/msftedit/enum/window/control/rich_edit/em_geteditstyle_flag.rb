require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :xp
    module Msftedit
      # Extended edit style masks
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb788031(v=vs.85).aspx
      buffer = [
          :EMULATESYSEDIT,               1,
          :BEEPONMAXTEXT,                2,

          :DEFAULTLATINLIGA,            16,
          :NOFOCUSLINKNOTIFY,           32,
          :USEAIMM,                     64,
          :NOIME,                      128,
          :ALLOWBEEPS,                 256,
          :UPPERCASE,                  512,
          :LOWERCASE,                  1024,
          :NOINPUTSEQUENCECHK,         2048,
          :BIDI,                       4096,
          :SCROLLONKILLFOCUS,          8192,
          :XLTCRCRLFTOCR,             16384,
          :DRAFTMODE,                 32768,
          :USECTF,               0x00010000,
          :HIDEGRIDLINES,        0x00020000,
          :USEATFONT,            0x00040000,
          :CUSTOMLOOK,           0x00080000,
          :LBSCROLLNOTIFY,       0x00100000,
          :CTFALLOWEMBED,        0x00200000,
          :CTFALLOWSMARTTAG,     0x00400000,
          :CTFALLOWPROOFING,     0x00800000,

          :MAX,                  0x20000000,
      ]

      if WindowsVersion >= 8
        buffer += [
            :EXTENDBACKCOLOR,   4,
            :HYPERLINKTOOLTIPS, 8,

            :LOGICALCARET,         0x01000000,
            :WORDDRAGDROP,         0x02000000,
            :SMARTDRAGDROP,        0x04000000,
            :MULTISELECT,          0x08000000,
            :CTFNOLOCK,            0x10000000,
            :NOEALINEHEIGHTADJUST, 0x20000000,
        ]
      end

      EmGeteditstyleFlag = enum :em_geteditstyle_flag, buffer

      define_prefix(:SES, EmGeteditstyleFlag)
    end
  end
end