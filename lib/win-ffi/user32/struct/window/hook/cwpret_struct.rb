module WinFFI
  module User32
    # Message structure used by WH_CALLWNDPROCRET
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-cwpretstruct
    class CWPRETSTRUCT < FFIAdditions::Struct
      attr_accessor :lResult, :lParam, :wParam, :message, :hwnd

      layout lResult: :lresult,
             lParam:  :lparam,
             wParam:  :wparam,
             message: :uint,
             hwnd:    :hwnd
    end
  end
end