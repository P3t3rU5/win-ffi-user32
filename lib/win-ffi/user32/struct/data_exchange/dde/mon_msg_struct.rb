require 'win-ffi/user32/struct/data_exchange/dde/dynamic_data_exchange_management_library_message_hook_data'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/ns-ddeml-tagmonmsgstruct
    class MONMSGSTRUCT < FFIAdditions::Struct
      def cb; end
      def cb=(v); end
      def hwndTo; end
      def hwndTo=(v); end
      def dwTime; end
      def dwTime=(v); end
      def hTask; end
      def hTask=(v); end
      def wMsg; end
      def wMsg=(v); end
      def wParam; end
      def wParam=(v); end
      def lParam; end
      def lParam=(v); end
      def dmhd; end
      def dmhd=(v); end

      layout cb:     :uint,
             hwndTo: :hwnd,
             dwTime: :dword,
             hTask:  :handle,
             wMsg:   :uint,
             wParam: :wparam,
             lParam: :lparam,
             dmhd:   DDEML_MSG_HOOK_DATA # new for NT

      def initialize
        super
        self.cb = self.size
      end

      private :cb=, :cb
    end
  end
end
