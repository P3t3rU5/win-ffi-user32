require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    # Alt-Tab Switch class information.
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-alttabinfo
    class ALTTABINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :cItems,
                    :cColumns,
                    :cRows,
                    :iColFocus,
                    :iRowFocus,
                    :cxItem,
                    :cyItem,
                    :ptStart

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
