require 'win-ffi/core/struct/rect'

module WinFFI
  module User32
    class TPMPARAMS  < FFIAdditions::Struct
      layout cbSize:   :uint,
             rcExclude: RECT

      def initialize
        super
        self.cbSize = self.size
      end
    end
  end
end