require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # Flags for the GETEXTEX data structure
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787913(v=vs.85).aspx
      GetTextExFlag = enum :get_text_ex_flag, [
          :DEFAULT,      0,
          :USECRLF,      1,
          :SELECTION,    2,
          :RAWTEXT,      4,
          :NOHIDDENTEXT, 8,
      ]

      define_prefix(:GT, GetTextExFlag)
    end
  end
end