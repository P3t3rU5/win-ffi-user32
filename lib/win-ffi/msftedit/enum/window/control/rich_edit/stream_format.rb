require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # Stream formats. Flags are all in low word, since high word gives possible codepage choice.
      #
      StreamFormat = enum :stream_format, [
          :TEXT,         0x0001,
          :RTF,          0x0002,
          :RTFNOOBJS,    0x0003,
          :TEXTIZED,     0x0004,

          :UNICODE,      0x0010,
          :USECODEPAGE,  0x0020,
          :NCRFORNONASCII, 0x40,
          :RTFVAL,       0x0700,
      ]

      define_prefix(:SF, StreamFormat)
    end
  end
end