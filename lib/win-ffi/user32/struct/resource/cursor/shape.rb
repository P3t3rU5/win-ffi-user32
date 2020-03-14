module WinFFI
  module User32
    # Icon/Cursor header
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-cursorshape
    class CURSORSHAPE < FFIAdditions::Struct
      attr_accessor :xHotSpot,
                    :yHotSpot,
                    :cx,
                    :cy,
                    :cbWidth,
                    :Planes,
                    :BitsPixel

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
