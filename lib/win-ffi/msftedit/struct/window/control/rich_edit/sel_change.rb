module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'
    require 'win-ffi/msftedit/struct/window/control/rich_edit/char_range'

    module Msftedit
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-selchange
      class SELCHANGE < FFIAdditions::Struct
        attr_accessor :nmhdr, :chrg, :seltyp

        layout nmhdr:  User32::NMHDR,
               chrg:   CHARRANGE,
               seltyp: :word
      end
    end
  end
end