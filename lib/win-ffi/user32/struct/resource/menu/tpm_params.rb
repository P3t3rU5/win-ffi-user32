require 'win-ffi/core/struct/rect'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-tpmparams
    class TPMPARAMS  < FFIAdditions::Struct
      attr_accessor :cbSize, :rcExclude

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