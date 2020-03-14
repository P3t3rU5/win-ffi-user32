module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-stylestruct
    class STYLESTRUCT < FFIAdditions::Struct
      attr_accessor :styleOld, :styleNew

      layout styleOld: :dword,
             styleNew: :dword
    end
  end
end