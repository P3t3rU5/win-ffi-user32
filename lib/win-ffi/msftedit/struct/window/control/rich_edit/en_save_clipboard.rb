require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'
    module Msftedit
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-ensaveclipboard
      class ENSAVECLIPBOARD < FFIAdditions::Struct
        attr_accessor :nmhdr, :cObjectCount, :cch

        layout nmhdr:        User32::NMHDR,
               cObjectCount: :long,
               cch:          :long
      end
    end
  end
end