require_relative '../../../struct/window/hook/mouse_hook_struct'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-mousehookstructex
    class MOUSEHOOKSTRUCTEX < FFIAdditions::Struct
      attr_accessor :DUMMYSTRUCTNAME, :mouseData

      layout DUMMYSTRUCTNAME: MOUSEHOOKSTRUCT,
             mouseData:       :dword
    end
  end
end
