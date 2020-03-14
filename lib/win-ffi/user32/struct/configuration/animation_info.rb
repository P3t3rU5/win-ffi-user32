module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-animationinfo
    class ANIMATIONINFO < FFIAdditions::Struct
      attr_accessor :cbSize, :iMinAnimate
      layout cbSize:      :uint,
             iMinAnimate: :int

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end