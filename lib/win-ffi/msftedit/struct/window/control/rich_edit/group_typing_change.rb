require 'win-ffi/msftedit'


module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message_header'
    module Msftedit
      class GROUPTYPINGCHANGE < FFIAdditions::Struct
        layout nmhdr: User32::NMHDR,
               fGroupTyping:  :bool
      end
    end
  end
end