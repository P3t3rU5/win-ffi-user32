module WinFFI
  module User32
    # Structure used by WH_DEBUG
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-debughookinfo
    class DEBUGHOOKINFO < FFIAdditions::Struct
      attr_accessor :idThread, :idThreadInstaller, :lParam, :wParam, :code

      layout idThread:          :dword,
             idThreadInstaller: :dword,
             lParam:            :lparam,
             wParam:            :wparam,
             code:              :int
    end
  end
end