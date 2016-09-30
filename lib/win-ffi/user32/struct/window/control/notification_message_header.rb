require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= :vista
    module User32
      class NMHDR < FFIAdditions::Struct
        layout hwnd:   :hwnd,
               idFrom: :uint,
               code:   :uint
      end
    end
  end
end