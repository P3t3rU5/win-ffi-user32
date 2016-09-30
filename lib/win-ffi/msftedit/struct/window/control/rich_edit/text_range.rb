require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    require 'win-ffi/msftedit/struct/window/control/rich_edit/char_range'
    module Msftedit
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787956(v=vs.85).aspx
      class TEXTRANGE < FFIAdditions::Struct
        layout chrg:     CHARRANGE,
               lpstrText: :pointer
      end
    end
  end
end