module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/ns-ddeml-tagmonerrstruct
    class MONERRSTRUCT < FFIAdditions::Struct
      def cb; end
      def cb=(v); end
      def wLastError; end
      def wLastError=(v); end
      def dwTime; end
      def dwTime=(v); end
      def hTask; end
      def hTask=(v); end

      layout cb:         :uint,
             wLastError: :uint,
             dwTime:     :dword,
             hTask:      :handle

      def initialize
        super
        self.cb = self.size
      end

      private :cb=, :cb
    end
  end
end