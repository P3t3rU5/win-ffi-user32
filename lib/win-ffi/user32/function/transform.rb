require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-clienttoscreen
    # BOOL ClientToScreen( _In_     HWND hWnd, _Inout_  LPPOINT lpPoint )
    def self.ClientToScreen(hWnd, lpPoint); end
    attach_function 'ClientToScreen', [:hwnd, POINT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-mapwindowpoints
    # int MapWindowPoints( _In_ HWND hWndFrom, _In_ HWND hWndTo, _Inout_  LPPOINT lpPoints, _In_ UINT cPoints )
    def self.MapWindowPoints(hWndFrom, hWndTo, lpPoints, cPoints); end
    attach_function 'MapWindowPoints', [:hwnd, :hwnd, POINT.ptr, :uint], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-screentoclient
    # BOOL ScreenToClient( _In_  HWND hWnd, LPPOINT lpPoint )
    def self.ScreenToClient(hWnd, lpPoint); end
    attach_function 'ScreenToClient', [:hwnd, POINT.ptr], :bool
  end
end