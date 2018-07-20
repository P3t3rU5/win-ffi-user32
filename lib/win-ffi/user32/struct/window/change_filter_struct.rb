require_relative '../../enum/window/message_filter_info'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd388197
    class CHANGEFILTERSTRUCT < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def ExtStatus; end
      def ExtStatus=(v); end

      layout cbSize:    :dword,
             ExtStatus: MessageFilterInfo

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end