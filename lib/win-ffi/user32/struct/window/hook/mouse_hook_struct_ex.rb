require_relative '../../../struct/window/hook/mouse_hook_struct'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644969
    class MOUSEHOOKSTRUCTEX < FFIAdditions::Struct
      def DUMMYSTRUCTNAME; end
      def DUMMYSTRUCTNAME=(v); end
      def mouseData; end
      def mouseData=(v); end

      layout DUMMYSTRUCTNAME: MOUSEHOOKSTRUCT,
             mouseData:       :dword
    end
  end
end
