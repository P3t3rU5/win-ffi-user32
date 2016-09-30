require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    require 'win-ffi/msftedit/enum/window/control/rich_edit/get_text_ex_flag'
    module Msftedit
      # EM_GETTEXTEX info; this struct is passed in the wparam of the message
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787913(v=vs.85).aspx
      class GETTEXTEX < FFIAdditions::Struct
        layout cb:             :dword,
               flags:   GetTextExFlag,
               codepage:        :uint,
               lpDefaultChar: :string,
               lpUsedDefChar:   :bool
      end
    end
  end
end