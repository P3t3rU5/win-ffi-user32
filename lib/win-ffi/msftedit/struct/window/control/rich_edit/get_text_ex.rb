module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/msftedit/enum/window/control/rich_edit/get_text_ex_flag'

    module Msftedit
      # EM_GETTEXTEX info; this struct is passed in the wparam of the message
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-gettextex
      class GETTEXTEX < FFIAdditions::Struct
        attr_accessor :cb, :flags, :codepage, :lpDefaultChar, :lpUsedDefChar

        layout cb:            :dword,
               flags:         GetTextExFlag,
               codepage:      :uint,
               lpDefaultChar: :string,
               lpUsedDefChar: :bool
      end
    end
  end
end