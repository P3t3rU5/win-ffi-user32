require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createcaret
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] hBitmap
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @return [true, false]
    def self.CreateCaret(hWnd, hBitmap, nWidth, nHeight) end
    attach_function 'CreateCaret', [:hwnd, :hbitmap, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-destroycaret
    # @return [true, false]
    def self.DestroyCaret; end
    attach_function 'DestroyCaret', [], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getcaretblinktime
    # @return [Integer]
    def self.GetCaretBlinkTime; end
    attach_function 'GetCaretBlinkTime', [], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getcaretpos
    # @param [FFI::Pointer] lpPoint
    # @return [true, false]
    def self.GetCaretPos(lpPoint) end
    attach_function 'GetCaretPos', [POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-hidecaret
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.HideCaret(hWnd) end
    attach_function 'HideCaret', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setcaretblinktime
    # @param [Integer] uMSeconds
    # @return [true, false]
    def self.SetCaretBlinkTime(uMSeconds) end
    attach_function 'SetCaretBlinkTime', [:uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setcaretpos
    # @param [Integer] x
    # @param [Integer] y
    # @return [true, false]
    def self.SetCaretPos(x, y) end
    attach_function 'SetCaretPos', [:int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-showcaret
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.ShowCaret(hWnd) end
    attach_function 'ShowCaret', [:hwnd], :bool
  end
end