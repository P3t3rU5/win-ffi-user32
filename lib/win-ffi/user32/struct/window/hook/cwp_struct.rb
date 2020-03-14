module WinFFI
  module User32
    # Message structure used by WH_CALLWNDPROC
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-cwpstruct
    class CWPSTRUCT < FFIAdditions::Struct
      attr_accessor :lParam, :wParam, :message, :hwnd

      layout lParam:  :lparam,
             wParam:  :wparam,
             message: :uint,
             hwnd:    :hwnd
    end
  end
end
