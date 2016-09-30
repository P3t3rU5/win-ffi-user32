require 'win-ffi/user32'

module WinFFI
  module User32
    # Structure used by WH_HARDWARE
    class HARDWAREHOOKSTRUCT < FFIAdditions::Struct
      layout hwnd:     :hwnd,
             message:  :uint,
             wParam: :wparam,
             lParam: :lparam
    end
  end
end