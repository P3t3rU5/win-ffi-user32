module WinFFI
  module User32
    # Icon/Cursor header
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagcursorshape
    class CURSORSHAPE < FFIAdditions::Struct
      def xHotSpot; end
      def xHotSpot=(v) end
      def yHotSpot; end
      def yHotSpot=(v) end
      def cx; end
      def cx=(v) end
      def cy; end
      def cy=(v) end
      def cbWidth; end
      def cbWidth=(v) end
      def Planes; end
      def Planes=(v) end
      def BitsPixel; end
      def BitsPixel=(v) end

      layout xHotSpot:  :int,
             yHotSpot:  :int,
             cx:        :int,
             cy:        :int,
             cbWidth:   :int,
             Planes:    :byte,
             BitsPixel: :byte
    end
  end
end
