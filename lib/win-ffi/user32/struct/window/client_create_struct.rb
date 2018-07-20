module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632602(v=vs.85).aspx
    class CLIENTCREATESTRUCT < FFIAdditions::Struct
      def hWindowMenu; end
      def hWindowMenu=(v); end
      def idFirstChild; end
      def idFirstChild=(v); end

      layout hWindowMenu:  :handle,
             idFirstChild: :uint
    end
  end
end