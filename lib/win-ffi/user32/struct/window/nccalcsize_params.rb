require 'win-ffi/core/struct/rect'

require_relative 'pos'

module WinFFI
  module User32
    # WM_NCCALCSIZE parameter structure
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632606
    class NCCALCSIZE_PARAMS < FFIAdditions::Struct
      def rgrc; end
      def rgrc=(v); end
      def lppos; end
      def lppos=(v); end

      layout rgrc:  [RECT, 3],
             lppos: WINDOWPOS
    end
  end
end