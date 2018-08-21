module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632607
    class STYLESTRUCT < FFIAdditions::Struct
      def styleOld; end
      def styleOld=(v); end
      def styleNew; end
      def styleNew=(v); end

      layout styleOld: :dword,
             styleNew: :dword
    end
  end
end