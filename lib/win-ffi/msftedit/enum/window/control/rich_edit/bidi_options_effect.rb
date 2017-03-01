require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Msftedit
      # BIDIOPTIONS effects
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787879(v=vs.85).aspx
      BidiOptionsEffect = enum :bidi_options_effect, [
          :RTLDIR,           0x0001,
          :PLAINTEXT,        0x0002,
          :NEUTRALOVERRIDE,  0x0004,
          :CONTEXTREADING,   0x0008,
          :CONTEXTALIGNMENT, 0x0010,
          :FORCERECALC,      0x0020,
          :LEGACYBIDICLASS,  0x0040,
          :UNICODEBIDI,      0x0080
      ]

      define_prefix(:BOM, BidiOptionsEffect)
    end
  end
end