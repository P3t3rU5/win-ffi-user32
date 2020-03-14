require 'win-ffi/user32/struct/data_exchange/dde/dynamic_data_exchange_management_library_message_hook_data'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/ddeml/ns-ddeml-monmsgstruct
    class MONMSGSTRUCT < FFIAdditions::Struct
      attr_accessor :cb,
                    :hwndTo,
                    :dwTime,
                    :hTask,
                    :wMsg,
                    :wParam,
                    :lParam,
                    :dmhd

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
