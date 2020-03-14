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
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enablescrollbar
      # @param [FFI::Pointer] hWnd
      # @param [Integer] wSBflags
      # @param [Integer] wArrows
      # @return [true, false]
      def self.EnableScrollBar(hWnd, wSBflags, wArrows) end
      attach_function 'EnableScrollBar', [:hwnd, Scrollbar, EnableScrollBarFlag], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getscrollbarinfo
      # @param [FFI::Pointer] hwnd
      # @param [Integer] idObject
      # @param [WinFFI::User32::SCROLLBARINFO] psbi
      # @return [true, false]
      def self.GetScrollBarInfo(hwnd, idObject, psbi) end
      attach_function 'GetScrollBarInfo', [:hwnd, SystemObjectId, SCROLLBARINFO.ptr(:out)], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getscrollinfo
      # @param [FFI::Pointer] hwnd
      # @param [Integer] fnBar
      # @param [WinFFI::User32::SCROLLINFO] lpsi
      # @return [true, false]
      def self.GetScrollInfo(hwnd, fnBar, lpsi) end
      attach_function 'GetScrollInfo', [:hwnd, Scrollbar, SCROLLINFO.ptr], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getscrollpos
      # @param [FFI::Pointer] hWnd
      # @param [Integer] nBar
      # @return [Integer]
      def self.GetScrollPos(hWnd, nBar) end
      attach_function 'GetScrollPos', [:hwnd, Scrollbar], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getscrollrange
      # @param [FFI::Pointer] hWnd
      # @param [Integer] nBar
      # @param [FFI::Pointer] lpMinPos
      # @param [FFI::Pointer] lpMaxPos
      # @return [true, false]
      def self.GetScrollRange(hWnd, nBar, lpMinPos, lpMaxPos) end
      attach_function 'GetScrollRange', [:hwnd, Scrollbar, :pointer, :pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-scrolldc
      # @param [FFI::Pointer] hDC
      # @param [Integer] dx
      # @param [Integer] dy
      # @param [WinFFI::RECT] lprcScroll
      # @param [WinFFI::RECT] lprcClip
      # @param [FFI::Pointer] hrgnUpdate
      # @param [WinFFI::RECT] lprcUpdate
      # @return [true, false]
      def self.ScrollDC(hDC, dx, dy, lprcScroll, lprcClip, hrgnUpdate, lprcUpdate) end
      attach_function 'ScrollDC', [:hdc, :int, :int, RECT.ptr(:in), RECT.ptr(:in), :hrgn, RECT.ptr(:out)], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-scrollwindow
      # @param [FFI::Pointer] hWnd
      # @param [Integer] xAmount
      # @param [Integer] yAmount
      # @param [WinFFI::RECT] lpRect
      # @param [WinFFI::RECT] lpClipRect
      # @return [true, false]
      def self.ScrollWindow(hWnd, xAmount, yAmount, lpRect, lpClipRect) end
      attach_function 'ScrollWindow', [:hwnd, :int, :int, RECT.ptr(:in), RECT.ptr(:in)], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-scrollwindowex
      # @param [FFI::Pointer] hWnd
      # @param [Integer] dx
      # @param [Integer] dy
      # @param [WinFFI::RECT] prcScroll
      # @param [WinFFI::RECT] prcClip
      # @param [FFI::Pointer] hrgnUpdate
      # @param [WinFFI::RECT] prcUpdate
      # @param [Integer] flags
      def self.ScrollWindowEx(hWnd, dx, dy, prcScroll, prcClip, hrgnUpdate, prcUpdate, flags) end
      attach_function 'ScrollWindowEx', [:hwnd, :int, :int, RECT.ptr(:in), RECT.ptr(:in), :hrgn, RECT.ptr(:out), ScrollWindowFlag], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setscrollinfo
      # @param [FFI::Pointer] hwnd
      # @param [Integer] fnBar
      # @param [WinFFI::User32::SCROLLINFO] lpsi
      # @param [true, false] fRedraw
      # @return [Integer]
      def self.SetScrollInfo(hwnd, fnBar, lpsi, fRedraw); end
      attach_function 'SetScrollInfo', [:hwnd, Scrollbar, SCROLLINFO.ptr(:in), :bool], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setscrollpos
      # @param [FFI::Pointer] hWnd
      # @param [Integer] nBar
      # @param [Integer] nPos
      # @param [true, false] bRedraw
      # @return [Integer]
      def self.SetScrollPos(hWnd, nBar, nPos, bRedraw); end
      attach_function 'SetScrollPos', [:hwnd, Scrollbar, :int, :bool], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setscrollrange
      # @param [FFI::Pointer] hWnd
      # @param [Integer] nBar
      # @param [Integer] nMinPos
      # @param [Integer] nMaxPos
      # @param [true, false] bRedraw
      # @return [true, false]
      def self.SetScrollRange(hWnd, nBar, nMinPos, nMaxPos, bRedraw); end
      attach_function 'SetScrollRange', [:hwnd, Scrollbar, :int, :int, :bool], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-showscrollbar
      # @param [FFI::Pointer] hWnd
      # @param [Integer] wBar
      # @param [true, false] bShow
      # @return [true, false]
      def self.ShowScrollBar(hWnd, wBar, bShow); end
      attach_function 'ShowScrollBar', [:hwnd, Scrollbar, :bool], :bool
    end
  end
end