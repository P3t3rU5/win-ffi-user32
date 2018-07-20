module WinFFI
  module User32
    class ANIMATIONINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def iMinAnimate; end
      def iMinAnimate=(v); end

      layout cbSize:      :uint,
             iMinAnimate:  :int

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end