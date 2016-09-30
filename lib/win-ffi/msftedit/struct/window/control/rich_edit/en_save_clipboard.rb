require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message_header'
    module Msftedit
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787903(v=vs.85).aspx
      class ENSAVECLIPBOARD < FFIAdditions::Struct
        layout nmhdr: User32::NMHDR,
               cObjectCount:  :long,
               cch:           :long
      end
    end
  end
end