module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Msftedit
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-endropfiles
      class ENDROPFILES < FFIAdditions::Struct
        attr_accessor :nmhdr, :hDrop, :cp, :fProtected

        layout nmhdr:      User32::NMHDR,
               hDrop:      :handle,
               cp:         :long,
               fProtected: :bool
      end
    end
  end
end