module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-touchpredictionparameters
    class TOUCHPREDICTIONPARAMETERS < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :dwLatency,
                    :dwSampleTime,
                    :bUseHWTimeStamp

      layout cbSize:          :uint,
             dwLatency:       :uint, # Latency in millisecs,
             dwSampleTime:    :uint, # Sample time in millisecs (used to deduce velocity),
             bUseHWTimeStamp: :uint  # Use H/W TimeStamps

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end