require 'win-ffi/core/struct/rect'

module WinFFI
  module User32
    # Window information snapshot
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632610
    class WINDOWINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def rcWindow; end
      def rcWindow=(v); end
      def rcClient; end
      def rcClient=(v); end
      def dwStyle; end
      def dwStyle=(v); end
      def dwExStyle; end
      def dwExStyle=(v); end
      def dwWindowStatus; end
      def dwWindowStatus=(v); end
      def cxWindowBorders; end
      def cxWindowBorders=(v); end
      def cyWindowBorders; end
      def cyWindowBorders=(v); end
      def atomWindowType; end
      def atomWindowType=(v); end
      def wCreatorVersion; end
      def wCreatorVersion=(v); end

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