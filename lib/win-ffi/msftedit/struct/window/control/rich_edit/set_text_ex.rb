module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/msftedit/enum/window/control/rich_edit/set_text_ex_flag'

    module Msftedit
      # EM_SETTEXTEX info; this struct is passed in the wparam of the message
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-settextex
      class SETTEXTEX < FFIAdditions::Struct
        attr_accessor :flags, :codepage

        layout flags:    SetTextExFlag,
               codepage: :uint
      end
    end
  end
end