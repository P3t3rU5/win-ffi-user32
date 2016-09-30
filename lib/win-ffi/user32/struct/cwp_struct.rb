require 'win-ffi/user32'

module WinFFI
  module User32
    # Message structure used by WH_CALLWNDPROC
    class CWPSTRUCT < FFIAdditions::Struct
      layout lParam: :lparam,
             wParam: :wparam,
             message:  :uint,
             hwnd:     :hwnd
    end
  end
end
