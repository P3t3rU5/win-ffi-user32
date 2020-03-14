require_relative '../../enum/window/message_filter_info'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-changefilterstruct
    class CHANGEFILTERSTRUCT < FFIAdditions::Struct
      attr_accessor :cbSize, :ExtStatus

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