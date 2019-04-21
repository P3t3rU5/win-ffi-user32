require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-clienttoscreen
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] lpPoint
    # @return [true, false]
    def self.ClientToScreen(hWnd, lpPoint); end
    attach_function 'ClientToScreen', [:hwnd, POINT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-mapwindowpoints
    # @param [FFI::Pointer] hWndFrom
    # @param [FFI::Pointer] hWndTo
    # @param [FFI::Pointer] lpPoints
    # @param [Integer] cPoints
    # @return [Integer]
    def self.MapWindowPoints(hWndFrom, hWndTo, lpPoints, cPoints); end
    attach_function 'MapWindowPoints', [:hwnd, :hwnd, POINT.ptr, :uint], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-screentoclient
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] lpPoint
    # @return [true, false]
    def self.ScreenToClient(hWnd, lpPoint); end
    attach_function 'ScreenToClient', [:hwnd, POINT.ptr], :bool
  end
end