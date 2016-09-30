require 'win-ffi/user32'

module WinFFI
  module User32
    # HCBT_ACTIVATE structure pointed to by lParam
    class CBTACTIVATESTRUCT < FFIAdditions::Struct
      layout fMouse:     :bool,
             hWndActive: :hwnd
    end
  end
end