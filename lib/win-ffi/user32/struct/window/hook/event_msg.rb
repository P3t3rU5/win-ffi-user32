module WinFFI
  module User32
    # Message Structure used in Journaling
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644966(v=vs.85).aspx
    class EVENTMSG < FFIAdditions::Struct
      def message; end
      def message=(v); end
      def paramL; end
      def paramL=(v); end
      def paramH; end
      def paramH=(v); end
      def time; end
      def time=(v); end
      def hwnd; end
      def hwnd=(v); end

      layout message: :uint,
             paramL:  :uint,
             paramH:  :uint,
             time:    :dword,
             hwnd:    :hwnd
    end
  end
end