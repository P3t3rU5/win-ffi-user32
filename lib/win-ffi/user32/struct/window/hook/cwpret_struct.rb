module WinFFI
  module User32
    # Message structure used by WH_CALLWNDPROCRET
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644963
    class CWPRETSTRUCT < FFIAdditions::Struct
      def lResult; end
      def lResult=(v) end
      def lParam; end
      def lParam=(v) end
      def wParam; end
      def wParam=(v) end
      def message; end
      def message=(v) end
      def hwnd; end
      def hwnd=(v) end

      layout lResult: :lresult,
             lParam:  :lparam,
             wParam:  :wparam,
             message: :uint,
             hwnd:    :hwnd
    end
  end
end