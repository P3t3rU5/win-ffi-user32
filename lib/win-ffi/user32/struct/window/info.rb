require 'win-ffi/core/struct/rect'

module WinFFI
  module User32
    # Window information snapshot
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-windowinfo
    class WINDOWINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :rcWindow,
                    :rcClient,
                    :dwStyle,
                    :dwExStyle,
                    :dwWindowStatus,
                    :cxWindowBorders,
                    :cyWindowBorders,
                    :atomWindowType,
                    :wCreatorVersion

      layout cbSize:          :dword,
             rcWindow:        RECT,
             rcClient:        RECT,
             dwStyle:         :dword,
             dwExStyle:       :dword,
             dwWindowStatus:  :dword,
             cxWindowBorders: :uint,
             cyWindowBorders: :uint,
             atomWindowType:  :atom,
             wCreatorVersion: :word

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end