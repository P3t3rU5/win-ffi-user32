require 'win-ffi/user32'

module WinFFI
  module User32
    # Message structure used by WH_CALLWNDPROCRET
    class CWPRETSTRUCT < FFIAdditions::Struct
      layout lResult: :lresult,
             lParam:   :lparam,
             wParam:   :wparam,
             message:    :uint,
             hwnd:       :hwnd
    end
  end
end