require 'win-ffi/user32'

require 'win-ffi/core/struct/rect'

module WinFFI
  module User32
    # Window information snapshot
    class WINDOWINFO < FFIAdditions::Struct
      layout cbSize:         :dword,
             rcWindow:         RECT,
             rcClient:         RECT,
             dwStyle:        :dword,
             dwExStyle:      :dword,
             dwWindowStatus: :dword,
             cxWindowBorders: :uint,
             cyWindowBorders: :uint,
             atomWindowType:  :atom,
             wCreatorVersion: :word

      def initialize
        super
        self.cbSize = self.size
      end
    end
  end
end