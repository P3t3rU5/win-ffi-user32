module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-lastinputinfo
    class LASTINPUTINFO < FFIAdditions::Struct
      attr_accessor :cbSize, :dwTime

      layout cbSize: :uint,
             dwTime: :dword

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize=
    end
  end
end