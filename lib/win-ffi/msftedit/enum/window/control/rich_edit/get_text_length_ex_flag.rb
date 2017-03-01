require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Msftedit
      # Flags for the GETTEXTLENGTHEX data structure
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787915(v=vs.85).aspx
      GetTextLengthExFlag = enum :get_text_length_ex_flag, [
          :DEFAULT,  0,
          :USECRLF,  1,
          :PRECISE,  2,
          :CLOSE,    4,
          :NUMCHARS, 8,
          :NUMBYTES, 1,
      ]

      define_prefix(:GTL, GetTextLengthExFlag)
    end
  end
end