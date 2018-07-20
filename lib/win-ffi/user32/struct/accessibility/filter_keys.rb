require_relative '../../enum/accessibility/filter_keys_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagfilterkeys
    class FILTERKEYS < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def dwFlags; end
      def dwFlags=(v); end
      def iWaitMSec; end
      def iWaitMSec=(v); end
      def iDelayMSec; end
      def iDelayMSec=(v); end
      def iRepeatMSec; end
      def iRepeatMSec=(v); end
      def iBounceMSec; end
      def iBounceMSec=(v); end

      layout cbSize:      :uint,
             dwFlags:     FilterKeysFlag,
             iWaitMSec:   :dword, # Acceptance Delay,
             iDelayMSec:  :dword, # Delay Until Repeat,
             iRepeatMSec: :dword, # Repeat Rate,
             iBounceMSec: :dword  # Debounce Time

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end