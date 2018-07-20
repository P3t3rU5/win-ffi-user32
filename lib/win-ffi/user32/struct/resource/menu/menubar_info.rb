require 'win-ffi/core/struct/rect'

require_relative '../../../typedef/hmenu'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagmenubarinfo
    class MENUBARINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def rcBar; end
      def rcBar=(v) end
      def hMenu; end
      def hMenu=(v) end
      def hwndMenu; end
      def hwndMenu=(v) end
      def fBarFocused; end
      def fBarFocused=(v) end
      def fFocused; end
      def fFocused=(v) end

      layout cbSize:      :dword,
             rcBar:       RECT,
             hMenu:       :hmenu,
             hwndMenu:    :hwnd,
             fBarFocused: :bool,
             fFocused:    :bool

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end