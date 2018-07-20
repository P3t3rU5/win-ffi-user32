module WinFFI
  module User32
    # HCBT_ACTIVATE structure pointed to by lParam
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644961
    class CBTACTIVATESTRUCT < FFIAdditions::Struct
      def fMouse; end
      def fMouse=(v); end
      def hWndActive; end
      def hWndActive=(v); end

      layout fMouse:     :bool,
             hWndActive: :hwnd
    end
  end
end