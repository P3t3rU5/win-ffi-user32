module WinFFI
  module User32
    # HCBT_ACTIVATE structure pointed to by lParam
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-cbtactivatestruct
    class CBTACTIVATESTRUCT < FFIAdditions::Struct
      attr_accessor :fMouse, :hWndActive

      layout fMouse:     :bool,
             hWndActive: :hwnd
    end
  end
end