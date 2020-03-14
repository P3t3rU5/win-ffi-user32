require_relative '../../enum/accessibility/filter_keys_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-filterkeys
    class FILTERKEYS < FFIAdditions::Struct
      attr_accessor :cbSize
                    :dwFlags
                    :iWaitMSec
                    :iDelayMSec
                    :iRepeatMSec
                    :iBounceMSec

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