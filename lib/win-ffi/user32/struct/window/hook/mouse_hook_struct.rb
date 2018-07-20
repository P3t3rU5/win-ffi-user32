require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    # Structure used by WH_MOUSE
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644968
    class MOUSEHOOKSTRUCT < FFIAdditions::Struct
      def pt; end
      def pt=(v); end
      def hwnd; end
      def hwnd=(v); end
      def wHitTestCode; end
      def wHitTestCode=(v); end
      def dwExtraInfo; end
      def dwExtraInfo=(v); end

      layout pt:           POINT,
             hwnd:         :hwnd,
             wHitTestCode: :uint,
             dwExtraInfo:  :ulong
    end
  end
end