require 'win-ffi/core/struct/rect'

require_relative '../../constant/window'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632608
    class TITLEBARINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def rcTitleBar; end
      def rcTitleBar=(v); end
      def rgstate; end
      def rgstate=(v); end

      layout cbSize:     :dword,
             rcTitleBar: RECT,
             rgstate:    [:dword, CCHILDREN_TITLEBAR + 1]  # ARRAY rgstate[CCHILDREN_TITLEBAR + 1];

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end