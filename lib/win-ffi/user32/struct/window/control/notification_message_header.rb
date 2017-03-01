require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module User32
      class NMHDR < FFIAdditions::Struct
        layout hwnd:   :hwnd,
               idFrom: :uint,
               code:   :uint
      end
    end
  end
end