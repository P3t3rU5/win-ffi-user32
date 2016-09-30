require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message_header'
    module Msftedit
      # https://msdn.FFIAdditions::Struct.com/en-us/library/windows/desktop/bb787895(v=vs.85).aspx
      class ENDROPFILES < FFIAdditions::Struct
        layout nmhdr: User32::NMHDR,
               hDrop:       :handle,
               cp:            :long,
               fProtected:    :bool
      end
    end
  end
end