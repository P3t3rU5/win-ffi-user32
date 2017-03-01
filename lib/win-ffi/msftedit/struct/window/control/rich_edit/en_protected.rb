require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message_header'
    require 'win-ffi/msftedit/struct/window/control/rich_edit/char_range'
    module Msftedit
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787903(v=vs.85).aspx
      class ENPROTECTED < FFIAdditions::Struct
        layout nmhdr: User32::NMHDR,
               msg:           :uint,
               wParam:      :wparam,
               lParam:      :lparam,
               chrg:      CHARRANGE

      end
    end
  end
end