require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    require 'win-ffi/msftedit/enum/window/control/rich_edit/get_text_length_ex_flag'
    module Msftedit
      # EM_GETTEXTLENGTHEX info; this struct is passed in the wparam of the msg
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787915(v=vs.85).aspx
      class GETTEXTLENGTHEX < FFIAdditions::Struct
        layout flags:   GetTextLengthExFlag,
               codepage:              :uint
      end
    end
  end
end