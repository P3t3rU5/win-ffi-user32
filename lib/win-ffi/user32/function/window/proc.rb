module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633573
    # LRESULT CALLBACK WindowProc(
    #   _In_  HWND hwnd,
    #   _In_  UINT uMsg,
    #   _In_  WPARAM wParam,
    #   _In_  LPARAM lParam )
    WindowProc = callback :WindowProc, [:hwnd, :uint, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633571
    # LRESULT CallWindowProc(
    #   _In_  WNDPROC lpPrevWndFunc,
    #   _In_  HWND hWnd,
    #   _In_  UINT Msg,
    #   _In_  WPARAM wParam,
    #   _In_  LPARAM lParam )
    def self.CallWindowProc(lpPrevWndFunc, hWnd, msg, wParam, lParam) end
    encoded_function 'CallWindowProc', [WindowProc, :hwnd, :uint, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633572
    # LRESULT DefWindowProc( __in  HWND   hWnd, __in  UINT   Msg, __in  WPARAM wParam, __in  LPARAM lParam)
    def self.DefWindowProc(hWnd, msg, wParam, lParam) end
    encoded_function 'DefWindowProc', [:hwnd, :uint, :wparam, :lparam], :lresult
  end
end