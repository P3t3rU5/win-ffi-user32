module WinFFI
  if WINDOWS_VERSION >= 8
    require 'win-ffi/msftedit/enum/window/control/rich_edit/end_composition_notify_code'

    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Msftedit
      # Notification structure for EN_ENDCOMPOSITION
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-endcompositionnotify
      class ENDCOMPOSITIONNOTIFY < FFIAdditions::Struct
        attr_accessor :nmhdr, :dwCode

        layout nmhdr:  User32::NMHDR,
               dwCode: EndCompositionNotifyCode
      end
    end
  end
end