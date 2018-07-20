module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645603
    class MOUSEMOVEPOINT < FFIAdditions::Struct
      def x; end
      def x=(v); end
      def y; end
      def y=(v); end
      def time; end
      def time=(v); end
      def dwExtraInfo; end
      def dwExtraInfo=(v); end

      layout x:           :int,
             y:           :int,
             time:        :dword,
             dwExtraInfo: :ulong
    end
  end
end