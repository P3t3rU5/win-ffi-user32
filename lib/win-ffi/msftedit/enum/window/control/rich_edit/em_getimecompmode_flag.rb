require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= 8
    module Msftedit
      # EM_SETCTFMODEBIAS wparam values
      # https://msdn.microsoft.com/pt-br/library/windows/desktop/bb774232(v=vs.85).aspx
      EmSetctfmodebiasFlag = enum :em_setctfmodebias_flag, [
          :DEFAULT,               0x0000,
          :FILENAME,              0x0001,
          :NAME,                  0x0002,
          :READING,               0x0003,
          :DATETIME,              0x0004,
          :CONVERSATION,          0x0005,
          :NUMERIC,               0x0006,
          :HIRAGANA,              0x0007,
          :KATAKANA,              0x0008,
          :HANGUL,                0x0009,
          :HALFWIDTHKATAKANA,     0x000A,
          :FULLWIDTHALPHANUMERIC, 0x000B,
          :HALFWIDTHALPHANUMERIC, 0x000C,
      ]

      define_prefix(:CTFMODEBIAS, EmSetctfmodebiasFlag)
    end
  end
end