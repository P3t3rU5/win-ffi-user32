require_relative '../../../enum/interaction/gesture/flag'
require_relative '../../../enum/interaction/gesture/identifier'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-taggestureinfo
    class GESTUREINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :dwFlags,
                    :dwID,
                    :hwndTarget,
                    :ptsLocation,
                    :dwInstanceID,
                    :dwSequenceID,
                    :ullArguments,
                    :cbExtraArgs

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