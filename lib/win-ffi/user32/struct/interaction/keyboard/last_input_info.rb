module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646272(v=vs.85).aspx
    class LASTINPUTINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def dwTime; end
      def dwTime=(v) end

      layout cbSize: :uint,
             dwTime: :dword

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end