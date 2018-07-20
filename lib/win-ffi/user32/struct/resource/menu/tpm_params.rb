require 'win-ffi/core/struct/rect'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagtpmparams
    class TPMPARAMS  < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def rcExclude; end
      def rcExclude=(v) end

      layout cbSize:    :uint,
             rcExclude: RECT

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end