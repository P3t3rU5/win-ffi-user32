require 'win-ffi/msftedit'


module WinFFI
  if WindowsVersion >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message_header'
    require 'win-ffi/msftedit/struct/window/control/rich_edit/char_range'
    module Msftedit
      # PenWin specific
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787893(v=vs.85).aspx
      class ENCORRECTTEXT < FFIAdditions::Struct
        layout nmhdr: User32::NMHDR,
               chrg:      CHARRANGE,
               seltyp:        :word
      end
    end
  end
end