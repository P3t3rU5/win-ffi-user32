require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    require 'win-ffi/msftedit/enum/window/control/rich_edit/set_text_ex_flag'
    module Msftedit
      # EM_SETTEXTEX info; this struct is passed in the wparam of the message
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787954(v=vs.85).aspx
      class SETTEXTEX < FFIAdditions::Struct
        layout flags: SetTextExFlag,
               codepage:      :uint
      end
    end
  end
end