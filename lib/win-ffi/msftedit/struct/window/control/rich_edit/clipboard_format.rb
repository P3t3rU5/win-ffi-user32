require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= 8
    module Msftedit
      require 'win-ffi/user32/struct/window/control/notification_message/header'
      require 'win-ffi/user32/enum/data_exchange/clipboard_format'
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh768305(v=vs.85).aspx
      class CLIPBOARDFORMAT < FFIAdditions::Struct
        layout nmhdr:        User32::NMHDR,
               cf: User32::ClipboardFormat
      end
    end
  end
end