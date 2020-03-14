require 'win-ffi/core/struct/rect'

module WinFFI
  module User32
    # Combobox information
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-comboboxinfo
    class COMBOBOXINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :rcItem,
                    :rcButton,
                    :stateButton,
                    :hwndCombo,
                    :hwndItem,
                    :hwndList

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