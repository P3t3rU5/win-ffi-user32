module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Msftedit
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-selchange
      class SELCHANGE < FFIAdditions::Struct
        attr_accessor :nmhdr, :rc

        layout nmhdr: User32::NMHDR,
               rc:    RECT
      end
    end
  end
end