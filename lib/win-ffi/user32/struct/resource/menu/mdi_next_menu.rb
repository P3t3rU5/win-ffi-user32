require_relative '../../../typedef/hmenu'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-mdinextmenu
    class MDINEXTMENU < FFIAdditions::Struct
      attr_accessor :hmenuIn, :hmenuNext, :hwndNext

      layout hmenuIn:   :hmenu,
             hmenuNext: :hmenu,
             hwndNext:  :hwnd
    end
  end
end