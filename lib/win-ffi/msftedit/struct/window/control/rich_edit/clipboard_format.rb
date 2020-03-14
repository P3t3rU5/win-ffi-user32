module WinFFI
  if WINDOWS_VERSION >= 8
    module Msftedit
      require 'win-ffi/user32/struct/window/control/notification_message/header'
      require 'win-ffi/user32/enum/data_exchange/clipboard_format'
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-clipboardformat
      class CLIPBOARDFORMAT < FFIAdditions::Struct
        attr_accessor :nmhdr, :cf

        layout nmhdr: User32::NMHDR,
               cf:    User32::ClipboardFormat
      end
    end
  end
end