require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= 8
    module Msftedit
      # https://technet.microsoft.com/en-US/sysinternals/bb787991
      EmAutourldetectFlag = enum :em_autourldetect_flag, [
          :ENABLEURL,           1,
          :ENABLEEMAILADDR,     2,
          :ENABLETELNO,         4,
          :ENABLEEAURLS,        8,
          :ENABLEDRIVELETTERS, 16,
          :DISABLEMIXEDLGC,    32,
      ]

      define_prefix(:AURL, EmAutourldetectFlag)
    end
  end
end