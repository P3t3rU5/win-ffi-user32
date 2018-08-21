require_relative '../../../enum/interaction/gesture/flag'
require_relative '../../../enum/interaction/gesture/identifier'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-taggestureinfo
    class GESTUREINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def dwFlags; end
      def dwFlags=(v); end
      def dwID; end
      def dwID=(v); end
      def hwndTarget; end
      def hwndTarget=(v); end
      def ptsLocation; end
      def ptsLocation=(v); end
      def dwInstanceID; end
      def dwInstanceID=(v); end
      def dwSequenceID; end
      def dwSequenceID=(v); end
      def ullArguments; end
      def ullArguments=(v); end
      def cbExtraArgs; end
      def cbExtraArgs=(v); end

      layout cbSize:       :uint,
             dwFlags:      GestureFlag,
             dwID:         GestureIdentifier,
             hwndTarget:   :hwnd,
             ptsLocation:  :pointer,
             dwInstanceID: :dword,
             dwSequenceID: :dword,
             ullArguments: :ulong,
             cbExtraArgs:  :uint

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize=, :cbSize
    end
  end
end