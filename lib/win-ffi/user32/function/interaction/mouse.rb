require 'win-ffi/core/struct/point'

require_relative '../../enum/interaction/mouse/keys_state'
require_relative '../../enum/interaction/mouse/event_flag'

require_relative '../../struct/interaction/mouse/move_point'
require_relative '../../struct/interaction/mouse/track_mouse_event'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646256
    # BOOL DragDetect( _In_ HWND hwnd, _In_ POINT pt )
    def self.DragDetect(hwnd, pt); end
    attach_function 'DragDetect', [:hwnd, POINT.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646257
    # HWND GetCapture(void)
    def self.GetCapture; end
    attach_function 'GetCapture', [], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646258
    # UINT GetDoubleClickTime(void)
    def self.GetDoubleClickTime; end
    attach_function 'GetDoubleClickTime', [], :uint

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646259
    # int GetMouseMovePointsEx(
    #   _In_   UINT cbSize,
    #   _In_   LPMOUSEMOVEPOINT lppt,
    #   _Out_  LPMOUSEMOVEPOINT lpptBuf,
    #   _In_   int nBufPoints,
    #   _In_   DWORD resolution )
    def self.GetMouseMovePointsEx(cbSize, lppt, lpptBuf, nBufPoints, resolution); end
    attach_function 'GetMouseMovePointsEx', [:uint, MOUSEMOVEPOINT.ptr, :pointer, :int, :dword], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646260
    # VOID mouse_event(
    #   _In_  DWORD dwFlags,
    #   _In_  DWORD dx,
    #   _In_  DWORD dy,
    #   _In_  DWORD dwData,
    #   _In_  ULONG_PTR dwExtraInfo )
    def self.mouse_event(dwFlags, dx, dy, dwData, dwExtraInfo); end
    attach_function 'mouse_event', [MouseEventFlag, :dword, :dword, :dword, :ulong_ptr], :void

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646261
    # BOOL ReleaseCapture(void)
    def self.ReleaseCapture; end
    attach_function 'ReleaseCapture', [], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646262
    # HWND SetCapture( _In_  HWND hWnd )
    def self.SetCapture(hWnd); end
    attach_function 'SetCapture', [:hwnd], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646263
    # BOOL SetDoubleClickTime( _In_  UINT uInterval )
    def self.SetDoubleClickTime(uInterval); end
    attach_function 'SetDoubleClickTime', [:uint], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646264
    # BOOL SwapMouseButton( _In_  BOOL fSwap )
    def self.SwapMouseButton(fSwap); end
    attach_function 'SwapMouseButton', [:bool], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646265
    # BOOL TrackMouseEvent( _Inout_  LPTRACKMOUSEEVENT lpEventTrack )
    def self.TrackMouseEvent(lpEventTrack); end
    attach_function 'TrackMouseEvent', [TRACKMOUSEEVENT.ptr], :bool
  end
end