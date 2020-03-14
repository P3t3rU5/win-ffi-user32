module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/ddeml/ns-ddeml-monerrstruct
    class MONERRSTRUCT < FFIAdditions::Struct
      attr_accessor :cb, :wLastError, :dwTime, :hTask

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