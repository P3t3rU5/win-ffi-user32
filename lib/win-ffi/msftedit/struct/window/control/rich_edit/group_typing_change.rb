module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Msftedit
      class GROUPTYPINGCHANGE < FFIAdditions::Struct
        attr_accessor :nmhdr, :fGroupTyping

        layout nmhdr:        User32::NMHDR,
               fGroupTyping: :bool
      end
    end
  end
end