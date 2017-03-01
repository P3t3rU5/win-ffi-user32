require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Msftedit
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787879(v=vs.85).aspx
    BidiOptionsMask = enum :bidi_options_mask, [
        :DEFPARADIR,       0x0001,
        :PLAINTEXT,        0x0002,
        :NEUTRALOVERRIDE,  0x0004,
        :CONTEXTREADING,   0x0008,
        :CONTEXTALIGNMENT, 0x0010,
        :LEGACYBIDICLASS,  0x0040,
    ]

    define_prefix(:BOM, BidiOptionsMask)

    end
  end
end
