module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646272(v=vs.85).aspx
    class LASTINPUTINFO < FFIAdditions::Struct
      layout cbSize:  :uint,
             dwTime: :dword

      def initialize
        super
        self.cbSize = self.size
      end
    end

  end
end