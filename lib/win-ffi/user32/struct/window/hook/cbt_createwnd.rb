require_relative '../create_struct'

module WinFFI
  module User32
    # HCBT_CREATEWND parameters pointed to by lParam
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644962(v=vs.85).aspx
    class CBT_CREATEWND < FFIAdditions::Struct
      def lpcs; end
      def lpcs=(v) end
      def hwndInsertAfter; end
      def hwndInsertAfter=(v) end

      layout lpcs:            CREATESTRUCT,
             hwndInsertAfter: :hwnd
    end
  end
end