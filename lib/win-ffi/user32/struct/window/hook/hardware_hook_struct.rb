module WinFFI
  module User32
    # Structure used by WH_HARDWARE
    class HARDWAREHOOKSTRUCT < FFIAdditions::Struct
      def hwnd; end
      def hwnd=(v) end
      def message; end
      def message=(v) end
      def wParam; end
      def wParam=(v) end
      def lParam; end
      def lParam=(v) end

      layout hwnd:    :hwnd,
             message: :uint,
             wParam:  :wparam,
             lParam:  :lparam
    end
  end
end