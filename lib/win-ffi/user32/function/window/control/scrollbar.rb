module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../typedef/hrgn'

    require_relative '../../../enum/window/control/scrollbar/enable_scrollbar_flag'
    require_relative '../../../enum/window/control/scrollbar'
    require_relative '../../../enum/window/control/scroll_window_flag'
    require_relative '../../../enum/window/control/system_object_id'

    require_relative '../../../struct/window/control/scrollbar/info'
    require_relative '../../../struct/window/control/scrollbar/scroll_info'

    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-showscrollbar
      def self.ShowScrollBar(hWnd, wBar, bShow); end

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enablescrollbar
      # BOOL EnableScrollBar( _In_  HWND hWnd, _In_  UINT wSBflags, _In_  UINT wArrows )
      def self.EnableScrollBar(hWnd, wSBflags, wArrows); end
      attach_function 'EnableScrollBar', [:hwnd, Scrollbar, EnableScrollBarFlag], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getscrollbarinfo
      # BOOL GetScrollBarInfo( _In_   HWND hwnd, _In_   LONG idObject, _Out_  PSCROLLBARINFO psbi )
      def self.GetScrollBarInfo(hwnd, idObject, psbi); end
      attach_function 'GetScrollBarInfo', [:hwnd, SystemObjectId, SCROLLBARINFO.ptr(:out)], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getscrollinfo
      # BOOL GetScrollInfo( _In_     HWND hwnd, _In_     int fnBar, _Inout_  LPSCROLLINFO lpsi )
      def self.GetScrollInfo(hwnd, fnBar, lpsi); end
      attach_function 'GetScrollInfo', [:hwnd, Scrollbar, SCROLLINFO.ptr], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getscrollpos
      # int GetScrollPos( _In_  HWND hWnd, _In_  int nBar )
      def self.GetScrollPos(hWnd, nBar); end
      attach_function 'GetScrollPos', [:hwnd, Scrollbar], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getscrollrange
      # BOOL GetScrollRange( _In_   HWND hWnd, _In_   int nBar, _Out_  LPINT lpMinPos, _Out_  LPINT lpMaxPos )
      def self.GetScrollRange(hWnd, nBar, lpMinPos, lpMaxPos); end
      attach_function 'GetScrollRange', [:hwnd, Scrollbar, :pointer, :pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-scrolldc
      # BOOL ScrollDC(
      #   _In_   HDC hDC,
      #   _In_   int dx,
      #   _In_   int dy,
      #   _In_   const RECT *lprcScroll,
      #   _In_   const RECT *lprcClip,
      #   _In_   HRGN hrgnUpdate,
      #   _Out_  LPRECT lprcUpdate )
      def self.ScrollDC(hDC, dx, dy, lprcScroll, lprcClip, hrgnUpdate, lprcUpdate); end
      attach_function 'ScrollDC', [:hdc, :int, :int, RECT.ptr(:in), RECT.ptr(:in), :hrgn, RECT.ptr(:out)], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-scrollwindow
      # BOOL ScrollWindow(
      #   _In_  HWND hWnd,
      #   _In_  int XAmount,
      #   _In_  int YAmount,
      #   _In_  const RECT *lpRect,
      #   _In_  const RECT *lpClipRect )
      def self.ScrollWindow(hWnd, xAmount, yAmount, lpRect, lpClipRect); end
      # attach_function 'ScrollWindow', [:hwnd, :int, :int, RECT.ptr(:in), RECT.ptr(:in)], :bool
      attach_function 'ScrollWindow', [:hwnd, :int, :int, RECT.ptr(:in), RECT.ptr(:in)], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-scrollwindowex
      # int ScrollWindowEx(
      #   _In_   HWND hWnd,
      #   _In_   int dx,
      #   _In_   int dy,
      #   _In_   const RECT *prcScroll,
      #   _In_   const RECT *prcClip,
      #   _In_   HRGN hrgnUpdate,
      #   _Out_  LPRECT prcUpdate,
      #   _In_   UINT flags )
      def self.ScrollWindowEx(hWnd, dx, dy, prcScroll, prcClip, hrgnUpdate, prcUpdate, flags); end
      attach_function 'ScrollWindowEx', [:hwnd, :int, :int, RECT.ptr(:in), RECT.ptr(:in), :hrgn, RECT.ptr(:out), ScrollWindowFlag], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setscrollinfo
      # int SetScrollInfo( _In_  HWND hwnd, _In_  int fnBar, _In_  LPCSCROLLINFO lpsi, _In_  BOOL fRedraw )
      def self.SetScrollInfo(hwnd, fnBar, lpsi, fRedraw); end
      attach_function 'SetScrollInfo', [:hwnd, Scrollbar, SCROLLINFO.ptr(:in), :bool], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setscrollpos
      # int SetScrollPos( _In_  HWND hWnd, _In_  int nBar, _In_  int nPos, _In_  BOOL bRedraw )
      def self.SetScrollPos(hWnd, nBar, nPos, bRedraw); end
      attach_function 'SetScrollPos', [:hwnd, Scrollbar, :int, :bool], :int

      # BOOL SetScrollRange( _In_  HWND hWnd, _In_  int nBar, _In_  int nMinPos, _In_  int nMaxPos, _In_  BOOL bRedraw )
      attach_function 'SetScrollRange', [:hwnd, Scrollbar, :int, :int, :bool], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setscrollrange
      # BOOL ShowScrollBar( _In_  HWND hWnd, _In_  int wBar, _In_  BOOL bShow )
      def self.SetScrollRange(hWnd, nBar, nMinPos, nMaxPos, bRedraw); end
      attach_function 'ShowScrollBar', [:hwnd, Scrollbar, :bool], :bool
    end
  end
end