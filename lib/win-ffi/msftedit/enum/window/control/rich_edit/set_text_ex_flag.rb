require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # Flags for the SETEXTEX data structure
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787954(v=vs.85).aspx
      SetTextExFlag = enum :set_text_ex_flag, [
          :DEFAULT,   0,
          :KEEPUNDO,  1,
          :SELECTION, 2,
          :NEWCHARS,  4,
          :UNICODE,   8,
      ]

      define_prefix(:ST, SetTextExFlag)
    end
  end
end