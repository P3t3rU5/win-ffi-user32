require_relative '../../../typedef/hmenu'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagmdinextmenu
    class MDINEXTMENU < FFIAdditions::Struct
      def hmenuIn; end
      def hmenuIn=(v) end
      def hmenuNext; end
      def hmenuNext=(v) end
      def hwndNext; end
      def hwndNext=(v) end

      layout hmenuIn:   :hmenu,
             hmenuNext: :hmenu,
             hwndNext:  :hwnd
    end
  end
end