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
    # @param [FFI::Pointer] hwnd
    # @param [FFI::Pointer] lpPaint
    # @return [FFI::Pointer]
    def self.BeginPaint(hwnd, lpPaint) end
    attach_function 'BeginPaint', [:hwnd, PAINTSTRUCT.ptr(:out)], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawanimatedrects
    # @param [FFI::Pointer] hwnd
    # @param [Integer] idAni
    # @param [FFI::Pointer] lprcFrom
    # @param [FFI::Pointer] lprcTo
    # @return [true, false]
    def self.DrawAnimatedRects(hwnd, idAni, lprcFrom, lprcTo) end
    attach_function 'DrawAnimatedRects', [:hwnd, :int, RECT.ptr, RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawcaption
    # @param [FFI::Pointer] hwnd
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lprc
    # @param [Integer] uFlags
    # @return [true, false]
    def self.DrawCaption(hwnd, hdc, lprc, uFlags) end
    attach_function 'DrawCaption', [:hwnd, :hdc, RECT.ptr(:in), DrawCaptionFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawedge
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] qrc
    # @param [Integer] edge
    # @param [Integer] grfFlags
    # @return [true, false]
    def self.DrawEdge(hdc, qrc, edge, grfFlags) end
    attach_function 'DrawEdge', [:hdc, RECT.ptr, EdgeFlag, BorderFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawfocusrect
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lprc
    # @return [true, false]
    def self.DrawFocusRect(hdc, lprc) end
    attach_function 'DrawFocusRect', [:hdc, RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawframecontrol
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lprc
    # @param [Integer] uType
    # @param [Integer] uState
    # @return [true, false]
    def self.DrawFrameControl(hdc, lprc, uType, uState) end
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
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hbr
    # @param [DrawStateProc] lpOutputFunc
    # @param [Integer] lData
    # @param [Integer] wData
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] cx
    # @param [Integer] cy
    # @param [Integer] fuFlags
    # @return [true, false]
    def self.DrawState(hdc, hbr, lpOutputFunc, lData, wData, x, y, cx, cy, fuFlags) end
    encoded_function 'DrawState', [:hdc, :hbrush, DrawStateProc, :lparam, :wparam, :int, :int, :int, :int, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-endpaint
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] lpPaint
    # @return [true, false]
    def self.EndPaint(hWnd, lpPaint) end
    attach_function 'EndPaint', [:hwnd, PAINTSTRUCT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-excludeupdatergn
    # @param [FFI::Pointer] hDC
    # @param [FFI::Pointer] hWnd
    # @return [Integer]
    def self.ExcludeUpdateRgn(hDC, hWnd) end
    attach_function 'ExcludeUpdateRgn', [:hdc, :hwnd], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowdc
    # @param [FFI::Pointer] hWnd
    # @return [FFI::Pointer]
    def self.GetWindowDC(hWnd) end
    attach_function 'GetWindowDC', [:hwnd], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getupdaterect
    # BOOL GetUpdateRect( _In_   HWND hWnd, _Out_  LPRECT lpRect, _In_   BOOL bErase )
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] lpRect
    # @param [true, false] bErase
    # @return [true, false]
    def self.GetUpdateRect(hWnd, lpRect, bErase) end
    attach_function 'GetUpdateRect', [:hwnd, RECT.ptr(:out), :bool], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getupdatergn
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] hRgn
    # @param [true, false] bErase
    # @return [Integer]
    def self.GetUpdateRgn(hWnd, hRgn, bErase) end
    attach_function 'GetUpdateRgn', [:hwnd, :hrgn, :bool], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowrgn
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] hRgn
    # @return [Integer]
    def self.GetWindowRgn(hWnd, hRgn) end
    attach_function 'GetWindowRgn', [:hwnd, :hrgn], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-graystringa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-graystringw
    # @param [FFI::Pointer] hDC
    # @param [FFI::Pointer] hBrush
    # @param [OutputProc] lpOutputFunc
    # @param [Integer] lpData
    # @param [Integer] nCount
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @return [true, false]
    def self.GrayString(hDC, hBrush, lpOutputFunc, lpData, nCount, x, y, nWidth, nHeight) end
    encoded_function 'GrayString', [:hdc, :hbrush, OutputProc, :lparam, :int, :int, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-invalidaterect
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] lpRect
    # @param [true, false] bErase
    # @return [true, false]
    def self.InvalidateRect(hWnd, lpRect, bErase) end
    attach_function 'InvalidateRect', [:hwnd, RECT.ptr(:in), :bool], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-invalidatergn
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] hRgn
    # @param [true, false] bErase
    # @return [true, false]
    def self.InvalidateRgn(hWnd, hRgn, bErase) end
    attach_function 'InvalidateRgn', [:hwnd, :hrgn, :bool], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-lockwindowupdate
    # @param [FFI::Pointer] hWndLock
    # @return [true, false]
    def self.LockWindowUpdate(hWndLock); end
    attach_function 'LockWindowUpdate', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-paintdesktop
    # @param [FFI::Pointer] hdc
    # @return [true, false]
    def self.PaintDesktop(hdc) end
    attach_function 'PaintDesktop', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-redrawwindow
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] lprcUpdate
    # @param [FFI::Pointer] hrgnUpdate
    # @param [Integer] flags
    # @return [true, false]
    def self.RedrawWindow(hWnd, lprcUpdate, hrgnUpdate, flags) end
    attach_function 'RedrawWindow', [:hwnd, RECT.ptr(:in), :hrgn, RedrawWindowFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setwindowrgn
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] hRgn
    # @param [true, false] bRedraw
    # @return [Integer]
    def self.SetWindowRgn(hWnd, hRgn, bRedraw) end
    attach_function 'SetWindowRgn', [:hwnd, :hrgn, :bool], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-updatewindow
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.UpdateWindow(hWnd) end
    attach_function 'UpdateWindow', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-validaterect
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] lpRect
    # @return [true, false]
    def self.ValidateRect(hWnd, lpRect) end
    attach_function 'ValidateRect', [:hwnd, RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-validatergn
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] hRgn
    # @return [true, false]
    def self.ValidateRgn(hWnd, hRgn) end
    attach_function 'ValidateRgn', [:hwnd, :hrgn], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawtext
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawtexta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawtextw
    # Text
    # @param [FFI::Pointer] hDC
    # @param [String] lpchText
    # @param [Integer] nCount
    # @param [FFI::Pointer] lprc
    # @param [Integer] uFormat
    # @return [Integer]
    def self.DrawText(hDC, lpchText, nCount, lprc, uFormat); end
    encoded_function 'DrawText', [:hdc, :string, :int, RECT.ptr, DrawTextFormatFlag], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawtextexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawtextexw
    # @param [FFI::Pointer] hDC
    # @param [String] lpchText
    # @param [Integer] cchText
    # @param [FFI::Pointer] lprc
    # @param [Integer] dwDTFormat
    # @param [FFI::Pointer] lpDTParams
    # @return [Integer]
    def self.DrawTextEx(hDC, lpchText, cchText, lprc, dwDTFormat, lpDTParams) end
    encoded_function 'DrawTextEx', [:hdc, :string, :int, RECT.ptr, DrawTextFormatFlag, DRAWTEXTPARAMS.ptr(:in)], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-gettabbedtextextenta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-gettabbedtextextentw
    # @param [lpnTabStopPositions] hDC
    # @param [String] lpString
    # @param [Integer] chCount
    # @param [Integer] nTabPositions
    # @param [FFI::Pointer] lpnTabStopPositions
    def self.GetTabbedTextExtent(hDC, lpString, chCount, nTabPositions, lpnTabStopPositions) end
    encoded_function 'GetTabbedTextExtent', [:hdc, :string, :int, :int, :pointer], :dword


    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-tabbedtextouta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-tabbedtextoutw
    # @param [FFI::Pointer] hDC
    # @param [Integer] x
    # @param [Integer] y
    # @param [String] lprc
    # @param [Integer] nCount
    # @param [Integer] nTabPositions
    # @param [FFI::Pointer] lpnTabStopPositions
    # @param [Integer] nTabOrigin
    # @return [Integer]
    def self.TabbedTextOut(hDC, x, y, lprc, nCount, nTabPositions, lpnTabStopPositions, nTabOrigin) end
    encoded_function 'TabbedTextOut', [:hdc, :int, :int, :string, :int, :int, :pointer, :int], :long

    if WINDOWS_VERSION >= :xp
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowrgnbox
      # @param [FFI::Pointer] hWnd
      # @param [FFI::Pointer] lprc
      # @return [Integer]
      def self.GetWindowRgnBox(hWnd, lprc); end
      attach_function 'GetWindowRgnBox', [:hwnd, RECT.ptr(:out)], :int
    end
  end
end