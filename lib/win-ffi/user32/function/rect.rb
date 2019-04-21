require 'win-ffi/core/struct/rect'
require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-copyrect
    # @param [FFI::Pointer] lprcDst
    # @param [FFI::Pointer] lprcSrc
    # @return [true, false]
    def self.CopyRect(lprcDst, lprcSrc) end
    attach_function 'CopyRect', [RECT.ptr(:out), RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-equalrect
    # @param [FFI::Pointer] lprc1
    # @param [FFI::Pointer] lprc2
    # @return [true, false]
    def self.EqualRect(lprc1, lprc2) end
    attach_function 'EqualRect', [RECT.ptr(:in), RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-inflaterect
    # @param [FFI::Pointer] lprc
    # @param [Integer] dx
    # @param [Integer] dy
    # @return [true, false]
    def self.InflateRect(lprc, dx, dy) end
    attach_function 'InflateRect', [RECT.ptr, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-intersectrect
    # @param [FFI::Pointer] lprcDst
    # @param [FFI::Pointer] lprcSrc1
    # @param [FFI::Pointer] lprcSrc2
    # @return [true, false]
    def self.IntersectRect(lprcDst, lprcSrc1, lprcSrc2) end
    attach_function 'IntersectRect', [RECT.ptr(:out), RECT.ptr(:in), RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isrectempty
    # @param [FFI::Pointer] lprc
    # @return [true, false]
    def self.IsRectEmpty(lprc) end
    attach_function 'IsRectEmpty', [RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-offsetrect
    # @param [FFI::Pointer] lprc
    # @param [Integer] dx
    # @param [Integer] dy
    # @return [true, false]
    def self.OffsetRect(lprc, dx, dy) end
    attach_function 'OffsetRect', [RECT.ptr, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ptinrect
    # @param [FFI::Pointer] lprc
    # @param [WinFFI::POINT] pt
    # @return [true, false]
    def self.PtInRect(lprc, pt) end
    attach_function 'PtInRect', [RECT.ptr(:in), POINT], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setrect
    # @param [FFI::Pointer] lprc
    # @param [Integer] xLeft
    # @param [Integer] yTop
    # @param [Integer] xRight
    # @param [Integer] yBottom
    # @return [true, false]
    def self.SetRect(lprc, xLeft, yTop, xRight, yBottom) end
    attach_function 'SetRect', [RECT.ptr(:out), :int, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setrectempty
    # @param [FFI::Pointer] lprc
    # @return [true, false]
    def self.SetRectEmpty(lprc) end
    attach_function 'SetRectEmpty', [RECT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-subtractrect
    # @param [FFI::Pointer] lprcDst
    # @param [FFI::Pointer] lprcSrc1
    # @param [FFI::Pointer] lprcSrc2
    # @return [true, false]
    def self.SubtractRect(lprcDst, lprcSrc1, lprcSrc2) end
    attach_function 'SubtractRect', [RECT.ptr(:out), RECT.ptr(:in), RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-unionrect
    # @param [FFI::Pointer] lprcDst
    # @param [FFI::Pointer] lprcSrc1
    # @param [FFI::Pointer] lprcSrc2
    # @return [true, false]
    def self.UnionRect(lprcDst, lprcSrc1, lprcSrc2) end
    attach_function 'UnionRect', [RECT.ptr(:out), RECT.ptr(:in), RECT.ptr(:in)], :bool
  end
end