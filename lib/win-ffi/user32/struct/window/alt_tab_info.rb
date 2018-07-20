require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    # Alt-Tab Switch class information.
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632601
    class ALTTABINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def cItems; end
      def cItems=(v); end
      def cColumns; end
      def cColumns=(v); end
      def cRows; end
      def cRows=(v); end
      def iColFocus; end
      def iColFocus=(v); end
      def iRowFocus; end
      def iRowFocus=(v); end
      def cxItem; end
      def cxItem=(v); end
      def cyItem; end
      def cyItem=(v); end
      def ptStart; end
      def ptStart=(v); end

      layout cbSize:    :dword,
             cItems:    :int,
             cColumns:  :int,
             cRows:     :int,
             iColFocus: :int,
             iRowFocus: :int,
             cxItem:    :int,
             cyItem:    :int,
             ptStart:   POINT

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end
