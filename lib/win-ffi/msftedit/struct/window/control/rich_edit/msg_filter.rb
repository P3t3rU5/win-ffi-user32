module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Msftedit
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-msgfilter
      class MSGFILTER < FFIAdditions::Struct
        attr_accessor :nmhdr, :msg, :wParam, :lParam

        layout nmhdr:  User32::NMHDR,
               msg:    :uint,
               wParam: :wparam,
               lParam: :lparam
      end
    end
  end
end