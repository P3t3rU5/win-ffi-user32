module WinFFI
  module User32
    # Message structure used by WH_CALLWNDPROC
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644964(v=vs.85).aspx
    class CWPSTRUCT < FFIAdditions::Struct
      def lParam; end
      def lParam=(v) end
      def wParam; end
      def wParam=(v) end
      def message; end
      def message=(v) end
      def hwnd; end
      def hwnd=(v) end

      layout lParam:  :lparam,
             wParam:  :wparam,
             message: :uint,
             hwnd:    :hwnd
    end
  end
end
