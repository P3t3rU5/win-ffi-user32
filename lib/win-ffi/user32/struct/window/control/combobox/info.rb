require 'win-ffi/core/struct/rect'

module WinFFI
  module User32
    # Combobox information
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagcomboboxinfo
    class COMBOBOXINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def rcItem; end
      def rcItem=(v) end
      def rcButton; end
      def rcButton=(v) end
      def stateButton; end
      def stateButton=(v) end
      def hwndCombo; end
      def hwndCombo=(v); end
      def hwndItem; end
      def hwndItem=(v); end
      def hwndList; end
      def hwndList=(v); end

      layout cbSize:      :dword,
             rcItem:      RECT,
             rcButton:    RECT,
             stateButton: :dword,
             hwndCombo:   :hwnd,
             hwndItem:    :hwnd,
             hwndList:    :hwnd

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end