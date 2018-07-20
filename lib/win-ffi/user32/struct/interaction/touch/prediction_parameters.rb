module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/hh969214
    class TOUCHPREDICTIONPARAMETERS < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def dwLatency; end
      def dwLatency=(v) end
      def dwSampleTime; end
      def dwSampleTime=(v) end
      def bUseHWTimeStamp; end
      def bUseHWTimeStamp=(v) end

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