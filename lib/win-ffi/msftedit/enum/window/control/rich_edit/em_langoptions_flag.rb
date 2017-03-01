require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Msftedit
      # Options for EM_SETLANGOPTIONS and EM_GETLANGOPTIONS
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb788040(v=vs.85).aspx
      buffer = [
          :AUTOKEYBOARD,        0x0001,
          :AUTOFONT,            0x0002,
          :IMECANCELCOMPLETE,   0x0004,
          :IMEALWAYSSENDNOTIFY, 0x0008,
          :AUTOFONTSIZEADJUST,  0x0010,
          :UIFONTS,             0x0020,
          :DUALFONT,            0x0080,
          :NORTFFONTSUBSTITUTE, 0x0400,
          :IMEUIINTEGRATION,    0x2000,
      ]

      if WINDOWS_VERSION >= 8
        buffer += [
            :NOIMPLICITLANG,      0x0040,
            :NOKBDLIDFIXUP,       0x0200,
            :SPELLCHECKING,       0x0800,
            :TKBPREDICTION,       0x1000,
        ]
      end

      EmLangoptionsFlag = enum :em_langoptions_flag, buffer

      define_prefix(:IMF, EmLangoptionsFlag)
    end
  end
end