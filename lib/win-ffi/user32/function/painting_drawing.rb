require 'win-ffi/core/struct/rect'

require 'win-ffi/user32/typedef/hrgn'

require_relative '../enum/painting_drawing/draw_caption_flag'
require_relative '../enum/painting_drawing/edge_flag'
require_relative '../enum/painting_drawing/border_flag'
require_relative '../enum/painting_drawing/draw_frame_control_flag'
require_relative '../enum/painting_drawing/draw_frame_control_state_flag'
require_relative '../enum/painting_drawing/redraw_window_flag'
require_relative '../enum/painting_drawing/draw_text_format_flag'

require_relative '../struct/painting_drawing/paint_struct'
require_relative '../struct/painting_drawing/draw_text_params'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nc-winuser-graystringproc
    # BOOL CALLBACK OutputProc( _In_  HDC hdc, _In_  LPARAM lpData, _In_  int cchData )
    OutputProc = callback 'OutputProc', [:hdc, :lparam, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-beginpaint
    # HDC BeginPaint( _In_   HWND hwnd, _Out_  LPPAINTSTRUCT lpPaint )
    def self.BeginPaint(hwnd, lpPaint); end
    attach_function 'BeginPaint', [:hwnd, PAINTSTRUCT.ptr(:out)], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawanimatedrects
    # BOOL DrawAnimatedRects( _In_  HWND hwnd, _In_  int idAni, const RECT *lprcFrom, const RECT *lprcTo )
    def self.DrawAnimatedRects(hwnd, idAni, lprcFrom, lprcTo); end
    attach_function 'DrawAnimatedRects', [:hwnd, :int, RECT.ptr, RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawcaption
    # BOOL DrawCaption( _In_  HWND hwnd, _In_  HDC hdc, _In_  LPCRECT lprc, _In_  UINT uFlags )
    def self.DrawCaption(hwnd, hdc, lprc, uFlags); end
    attach_function 'DrawCaption', [:hwnd, :hdc, RECT.ptr(:in), DrawCaptionFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawedge
    # BOOL DrawEdge( _In_     HDC hdc, _Inout_  LPRECT qrc, _In_     UINT edge, _In_     UINT grfFlags )
    def self.DrawEdge(hdc, qrc, edge, grfFlags); end
    attach_function 'DrawEdge', [:hdc, RECT.ptr, EdgeFlag, BorderFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawfocusrect
    # BOOL DrawFocusRect( _In_  HDC hDC, _In_  const RECT *lprc )
    def self.DrawFocusRect(hdc, lprc); end
    attach_function 'DrawFocusRect', [:hdc, RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawframecontrol
    # BOOL DrawFrameControl( _In_  HDC hdc, _In_  LPRECT lprc, _In_  UINT uType, _In_  UINT uState )
    def self.DrawFrameControl(hdc, lprc, uType, uState); end
    attach_function 'DrawFrameControl', [:hdc, RECT.ptr(:in), DrawFrameControlFlag, DrawFrameControlStateFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nc-winuser-drawstateproc
    # BOOL CALLBACK DrawStateProc(
    #   _In_  HDC hdc,
    #   _In_  LPARAM lData,
    #   _In_  WPARAM wData,
    #   _In_  int cx,
    #   _In_  int cy )
    DrawStateProc = callback 'DrawStateProc', [:hdc, :lparam, :wparam, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawstatea
    # BOOL DrawState(
    #   _In_  HDC hdc,
    #   _In_  HBRUSH hbr,
    #   _In_  DRAWSTATEPROC lpOutputFunc,
    #   _In_  LPARAM lData,
    #   _In_  WPARAM wData,
    #   _In_  int x,
    #   _In_  int y,
    #   _In_  int cx,
    #   _In_  int cy,
    #   _In_  UINT fuFlags)
    def self.DrawState(hdc, hbr, lpOutputFunc, lData, wData, x, y, cx, cy, fuFlags); end
    encoded_function 'DrawState', [:hdc, :hbrush, DrawStateProc, :lparam, :wparam, :int, :int, :int, :int, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-endpaint
    # BOOL EndPaint( _In_  HWND hWnd, _In_  const PAINTSTRUCT *lpPaint )
    def self.EndPaint(hWnd, lpPaint); end
    attach_function 'EndPaint', [:hwnd, PAINTSTRUCT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-excludeupdatergn
    # int ExcludeUpdateRgn( _In_  HDC hDC, _In_  HWND hWnd )
    def self.ExcludeUpdateRgn(hDC, hWnd); end
    attach_function 'ExcludeUpdateRgn', [:hdc, :hwnd], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowdc
    # HDC GetWindowDC( _In_  HWND hWnd )
    def self.GetWindowDC(hWnd); end
    attach_function 'GetWindowDC', [:hwnd], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getupdaterect
    # BOOL GetUpdateRect( _In_   HWND hWnd, _Out_  LPRECT lpRect, _In_   BOOL bErase )
    def self.GetUpdateRect(hWnd, lpRect, bErase); end
    attach_function 'GetUpdateRect', [:hwnd, RECT.ptr(:out), :bool], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getupdatergn
    # int GetUpdateRgn( _In_  HWND hWnd, _In_  HRGN hRgn, _In_  BOOL bErase )
    def self.GetUpdateRgn(hWnd, hRgn, bErase); end
    attach_function 'GetUpdateRgn', [:hwnd, :hrgn, :bool], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowrgn
    # int GetWindowRgn( _In_  HWND hWnd, _In_  HRGN hRgn)
    def self.GetWindowRgn(hWnd, hRgn); end
    attach_function 'GetWindowRgn', [:hwnd, :hrgn], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-graystringa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-graystringw
    # BOOL GrayString(
    #   _In_  HDC hDC,
    #   _In_  HBRUSH hBrush,
    #   _In_  GRAYSTRINGPROC lpOutputFunc,
    #   _In_  LPARAM lpData,
    #   _In_  int nCount,
    #   _In_  int X,
    #   _In_  int Y,
    #   _In_  int nWidth,
    #   _In_  int nHeight )
    def self.GrayString(hDC, hBrush, lpOutputFunc, lpData, nCount, x, y, nWidth, nHeight); end
    encoded_function 'GrayString', [:hdc, :hbrush, OutputProc, :lparam, :int, :int, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-invalidaterect
    # BOOL InvalidateRect( __in  HWND hWnd, __in  const RECT *lpRect, __in  BOOL bErase)
    def self.InvalidateRect(hWnd, lpRect, bErase); end
    attach_function 'InvalidateRect', [:hwnd, RECT.ptr, :bool], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-invalidatergn
    # BOOL InvalidateRgn( _In_  HWND hWnd, _In_  HRGN hRgn, _In_  BOOL bErase )
    def self.InvalidateRgn(hWnd, hRgn, bErase); end
    attach_function 'InvalidateRgn', [:hwnd, :hrgn, :bool], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-lockwindowupdate
    # BOOL LockWindowUpdate( _In_  HWND hWndLock )
    def self.LockWindowUpdate(hWndLock); end
    attach_function 'LockWindowUpdate', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-paintdesktop
    # BOOL PaintDesktop( _In_  HDC hdc )
    def self.PaintDesktop(hdc); end
    attach_function 'PaintDesktop', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-redrawwindow
    # BOOL RedrawWindow( _In_  HWND hWnd, _In_  const RECT *lprcUpdate, _In_  HRGN hrgnUpdate, _In_  UINT flags )
    def self.RedrawWindow(hWnd, lprcUpdate, hrgnUpdate, flags); end
    attach_function 'RedrawWindow', [:hwnd, RECT.ptr, :hrgn, RedrawWindowFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setwindowrgn
    # int SetWindowRgn( _In_  HWND hWnd, _In_  HRGN hRgn, _In_  BOOL bRedraw )
    def self.SetWindowRgn(hWnd, hRgn, bRedraw); end
    attach_function 'SetWindowRgn', [:hwnd, :hrgn, :bool], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-updatewindow
    # BOOL UpdateWindow( __int  HWND hWnd)
    def self.UpdateWindow(hWnd); end
    attach_function 'UpdateWindow', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-validaterect
    # BOOL ValidateRect( __in  HWND hWnd, __in  const RECT *lpRect)
    def self.ValidateRect(hWnd, lpRect); end
    attach_function 'ValidateRect', [:hwnd, RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-validatergn
    # BOOL ValidateRgn( _In_  HWND hWnd, _In_  HRGN hRgn )
    def self.ValidateRgn(hWnd, hRgn); end
    attach_function 'ValidateRgn', [:hwnd, :hrgn], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawtext
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawtexta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawtextw
    # Text
    # int DrawText(
    #   _In_     HDC hDC,
    #   _Inout_  LPCTSTR lpchText,
    #   _In_     int nCount,
    #   _Inout_  LPRECT lpRect,
    #   _In_     UINT uFormat )
    def self.DrawText(hDC, lpchText, nCount, lprc, uFormat); end
    encoded_function 'DrawText', [:hdc, :string, :int, RECT.ptr, DrawTextFormatFlag], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawtextexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawtextexw
    # int DrawTextEx(
    #   _In_     HDC hdc,
    #   _Inout_  LPTSTR lpchText,
    #   _In_     int cchText,
    #   _Inout_  LPRECT lprc,
    #   _In_     UINT dwDTFormat,
    #   _In_     LPDRAWTEXTPARAMS lpDTParams )
    def self.DrawTextEx(hDC, lpchText, cchText, lprc, dwDTFormat, lpDTParams); end
    encoded_function 'DrawTextEx', [:hdc, :string, :int, RECT.ptr, DrawTextFormatFlag, DRAWTEXTPARAMS.ptr(:in)], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-gettabbedtextextenta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-gettabbedtextextentw
    # DWORD GetTabbedTextExtent(
    #   _In_  HDC hDC,
    #   _In_  LPCTSTR lpString,
    #   _In_  int nCount,
    #   _In_  int nTabPositions,
    #   _In_  const LPINT lpnTabStopPositions )
    def self.GetTabbedTextExtent(hDC, lpchText, cchText, lprc, dwDTFormat, lpDTParams); end
    encoded_function 'GetTabbedTextExtent', [:hdc, :string, :int, :int, :pointer], :dword


    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-tabbedtextouta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-tabbedtextoutw
    # LONG TabbedTextOut(
    #   _In_  HDC hDC,
    #   _In_  int X,
    #   _In_  int Y,
    #   _In_  LPCTSTR lpString,
    #   _In_  int nCount,
    #   _In_  int nTabPositions,
    #   _In_  const LPINT lpnTabStopPositions,
    #   _In_  int nTabOrigin )
    def self.TabbedTextOut(hDC, x, y, lprc, nCount, nTabPositions, lpnTabStopPositions); end
    encoded_function 'TabbedTextOut', [:hdc, :int, :int, :string, :int, :int, :pointer, :int], :long

    if WINDOWS_VERSION >= :xp
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowrgnbox
      # int GetWindowRgnBox( _In_   HWND hWnd, _Out_  LPRECT lprc )
      def self.GetWindowRgnBox(hWnd, lprc); end
      attach_function 'GetWindowRgnBox', [:hwnd, RECT.ptr(:out)], :int
    end
  end
end