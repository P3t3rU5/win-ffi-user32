module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'
    require 'win-ffi/msftedit/struct/window/control/rich_edit/char_range'
    module Msftedit
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-enprotected
      class ENPROTECTED < FFIAdditions::Struct
        attr_accessor :nmhdr, :msg, :wParam, :lParam, :chrg

        layout nmhdr:  User32::NMHDR,
               msg:    :uint,
               wParam: :wparam,
               lParam: :lparam,
               chrg:   CHARRANGE

      end
    end
  end
end