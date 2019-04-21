require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/user32/struct/window/control/notification_message/header'
    module Msftedit
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787952(v=vs.85).aspx
      class SELCHANGE < FFIAdditions::Struct
        layout nmhdr: User32::NMHDR,
               rc:             RECT
      end
    end
  end
end