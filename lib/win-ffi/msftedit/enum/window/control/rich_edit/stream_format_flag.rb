require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      StreamFormatFlag = enum :stream_format_flag, [
          :WRITEXTRAPAR,       0x80,
          :SELECTION,        0x8000,
          :PLAINRTF,         0x4000,
          :PERSISTVIEWSCALE, 0x2000,
          :KEEPDOCINFO,      0x1000,
          :PWD,              0x0800

      ]

      define_prefix(:SFF, StreamFormatFlag)
    end
  end
end