module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/msftedit/enum/window/control/rich_edit/get_text_length_ex_flag'

    module Msftedit
      # EM_GETTEXTLENGTHEX info; this struct is passed in the wparam of the msg
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-gettextlengthex
      class GETTEXTLENGTHEX < FFIAdditions::Struct
        attr_accessor :flags, :codepage

        layout flags:    GetTextLengthExFlag,
               codepage: :uint
      end
    end
  end
end