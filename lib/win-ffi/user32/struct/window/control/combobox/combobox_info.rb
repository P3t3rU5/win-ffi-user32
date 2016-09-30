require 'win-ffi/user32'

require 'win-ffi/core/struct/rect'

module WinFFI
  module User32
    # Combobox information
    class COMBOBOXINFO < FFIAdditions::Struct
      layout cbSize:      :dword,
             rcItem:        RECT,
             rcButton:      RECT,
             stateButton: :dword,
             hwndCombo:    :hwnd,
             hwndItem:     :hwnd,
             hwndList:     :hwnd

      def initialize
        super
        self.cbSize = self.size
      end
    end
  end
end