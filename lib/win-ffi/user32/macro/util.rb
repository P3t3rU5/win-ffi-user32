module WinFFI
  module User32
    class << self
      #define POINTSTOPOINT(pt, pts)
      # { (pt).x = (LONG)(SHORT)LOWORD(*(LONG*)&pts);
      #   (pt).y = (LONG)(SHORT)HIWORD(*(LONG*)&pts); }
      def POINTSTOPOINT(pt, pts)
        pt.x = loword(pts)
        pt.y = hiword(pts)
      end

      #define POINTTOPOINTS(pt) (MAKELONG((short)((pt).x), (short)((pt).y)))
      def POINTTOPOINTS(pt)
        makelong(pt.x, pt.y)
      end

      #define MAKEWPARAM(l, h) ((WPARAM)(DWORD)MAKELONG(l, h))
      def MAKEWPARAM(l, h)
        MAKELONG(l, h)
      end

      #define MAKELPARAM(l, h) ((LPARAM)(DWORD)MAKELONG(l, h))
      def MAKELPARAM(l, h)
        MAKELONG(l, h)
      end
      #define MAKELRESULT(l, h) ((LRESULT)(DWORD)MAKELONG(l, h))
      def MAKELRESULT(l, h)
        MAKELONG(l, h)
      end
    end
  end
end