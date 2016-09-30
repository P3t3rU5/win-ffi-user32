require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= 8
    module Msftedit
      # wparam values for EM_SETEDITSTYLEEX/EM_GETEDITSTYLEEX
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh768367(v=vs.85).aspx
      EmEditstyleexFlag = enum :em_editstyleex_flag, [
          :NOTABLE,            0x00000004,
          :NOMATH,             0x00000040,
          :HANDLEFRIENDLYURL,  0x00000100,
          :NOTHEMING,          0x00080000,
          :NOACETATESELECTION, 0x00100000,
          :USESINGLELINE,      0x00200000,
          :MULTITOUCH,         0x08000000,
          :HIDETEMPFORMAT,     0x10000000,
          :USEMOUSEWPARAM,     0x20000000,
      ]

      define_prefix(:SES_EX, EmEditstyleexFlag)
    end
  end
end