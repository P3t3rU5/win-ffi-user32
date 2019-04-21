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
    # @param [WindowProc] lpPrevWndFunc
    # @param [FFI::Pointer] hWnd
    # @param [Integer] msg
    # @param [Integer] wParam
    # @param [Integer] lParam
    # @return [Integer]
    def self.CallWindowProc(lpPrevWndFunc, hWnd, msg, wParam, lParam) end
    encoded_function 'CallWindowProc', [WindowProc, :hwnd, :uint, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633572
    # @param [FFI::Pointer] hWnd
    # @param [Integer] msg
    # @param [Integer] wParam
    # @param [Integer] lParam
    # @return [Ineger]
    def self.DefWindowProc(hWnd, msg, wParam, lParam) end
    encoded_function 'DefWindowProc', [:hwnd, :uint, :wparam, :lparam], :lresult
  end
end