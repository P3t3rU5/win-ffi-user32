module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-drawtextparams
    class DRAWTEXTPARAMS < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :iTabLength,
                    :iLeftMargin,
                    :iRightMargin,
                    :uiLengthDrawn

      layout cbSize:        :uint,
             iTabLength:    :int,
             iLeftMargin:   :int,
             iRightMargin:  :int,
             uiLengthDrawn: :uint

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end