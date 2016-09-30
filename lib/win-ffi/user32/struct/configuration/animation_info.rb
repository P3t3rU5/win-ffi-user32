require 'win-ffi/user32'

module WinFFI
  module User32
    class ANIMATIONINFO < FFIAdditions::Struct
      layout cbSize:     :uint,
             iMinAnimate: :int

      def initialize
        super
        self[:cbSize] = self.size
      end
    end
  end
end