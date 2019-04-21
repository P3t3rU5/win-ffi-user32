module WinFFI
  module User32
    #define POINTSTOPOINT(pt, pts)
    # { (pt).x = (LONG)(SHORT)LOWORD(*(LONG*)&pts)
    #   (pt).y = (LONG)(SHORT)HIWORD(*(LONG*)&pts) }
    def self.POINTSTOPOINT(pt, pts)
      pt.x = LOWORD(pts)
      pt.y = HIWORD(pts)
    end

    #define POINTTOPOINTS(pt) (MAKELONG((short)((pt).x), (short)((pt).y)))
    def self.POINTTOPOINTS(pt) MAKELONG(pt.x, pt.y) end

    #define MAKEWPARAM(l, h) ((WPARAM)(DWORD)MAKELONG(l, h))
    def self.MAKEWPARAM(l, h) MAKELONG(l, h) end

    #define MAKELPARAM(l, h) ((LPARAM)(DWORD)MAKELONG(l, h))
    def self.MAKELPARAM(l, h) MAKELONG(l, h) end

    #define MAKELRESULT(l, h) ((LRESULT)(DWORD)MAKELONG(l, h))
    def self.MAKELRESULT(l, h) MAKELONG(l, h) end
  end
end
