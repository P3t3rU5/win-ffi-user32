require 'win-ffi/core/struct/rect'

require_relative '../../../typedef/hmenu'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-menubarinfo
    class MENUBARINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :rcBar,
                    :hMenu,
                    :hwndMenu,
                    :fBarFocused,
                    :fFocused

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