require 'win-ffi/core/struct/rect'
require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-copyrect
    # BOOL CopyRect( _Out_  LPRECT lprcDst, _In_   const RECT *lprcSrc )
    def self.CopyRect(lprcDst, lprcSrc) end
    attach_function 'CopyRect', [RECT.ptr, RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-equalrect
    # BOOL EqualRect( _In_  const RECT *lprc1, _In_  const RECT *lprc2 )
    def self.EqualRect(lprc1, lprc2) end
    attach_function 'EqualRect', [RECT.ptr, RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-inflaterect
    # BOOL InflateRect( _Inout_  LPRECT lprc, _In_     int dx, _In_     int dy )
    def self.InflateRect(lprc, dx, dy) end
    attach_function 'InflateRect', [RECT.ptr, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-intersectrect
    # BOOL IntersectRect( _Out_  LPRECT lprcDst, _In_   const RECT *lprcSrc1, _In_   const RECT *lprcSrc2 )
    def self.IntersectRect(lprcDst, lprcSrc1, lprcSrc2) end
    attach_function 'IntersectRect', [RECT.ptr, RECT.ptr, RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isrectempty
    # BOOL IsRectEmpty( _In_  const RECT *lprc )
    def self.IsRectEmpty(lprc) end
    attach_function 'IsRectEmpty', [RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-offsetrect
    # BOOL OffsetRect( _Inout_  LPRECT lprc, _In_     int dx, _In_     int dy )
    def self.OffsetRect(lprc, dx, dy) end
    attach_function 'OffsetRect', [RECT.ptr, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ptinrect
    # BOOL PtInRect( _In_  const RECT *lprc, _In_  POINT pt )
    def self.PtInRect(lprc, pt) end
    attach_function 'PtInRect', [RECT.ptr, POINT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setrect
    # BOOL SetRect( _Out_  LPRECT lprc, _In_   int xLeft, _In_   int yTop, _In_   int xRight, _In_   int yBottom )
    def self.SetRect(lprc, xLeft, yTop, xRight, yBottom) end
    attach_function 'SetRect', [RECT.ptr, :int, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setrectempty
    # BOOL SetRectEmpty( _Out_  LPRECT lprc )
    def self.SetRectEmpty(lprc) end
    attach_function 'SetRectEmpty', [RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-subtractrect
    # BOOL SubtractRect( _Out_  LPRECT lprcDst, _In_   const RECT *lprcSrc1, _In_   const RECT *lprcSrc2 )
    def self.SubtractRect(lprcDst, lprcSrc1, lprcSrc2) end
    attach_function 'SubtractRect', [RECT.ptr, RECT.ptr, RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-unionrect
    # BOOL UnionRect( _Out_  LPRECT lprcDst, _In_   const RECT *lprcSrc1, _In_   const RECT *lprcSrc2 )
    def self.UnionRect(lprcDst, lprcSrc1, lprcSrc2) end
    attach_function 'UnionRect', [RECT.ptr, RECT.ptr, RECT.ptr], :bool
  end
end