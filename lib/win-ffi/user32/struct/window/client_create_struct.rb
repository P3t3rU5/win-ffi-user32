module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-clientcreatestruct
    class CLIENTCREATESTRUCT < FFIAdditions::Struct
      attr_accessor :hWindowMenu, :idFirstChild

      layout hWindowMenu:  :handle,
             idFirstChild: :uint
    end
  end
end