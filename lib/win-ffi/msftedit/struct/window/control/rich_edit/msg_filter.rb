require 'win-ffi/msftedit'


module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'
    module Msftedit
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787932(v=vs.85).aspx
      class MSGFILTER < FFIAdditions::Struct
        layout nmhdr: User32::NMHDR,
               msg:           :uint,
               wParam:      :wparam,
               lParam:      :lparam
      end
    end
  end
end