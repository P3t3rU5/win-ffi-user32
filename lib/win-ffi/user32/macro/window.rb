require_relative '../enum/window/function/window_long'
require_relative '../../../../lib/win-ffi/user32/function/window/dialog'

module WinFFI
  module User32
    class << self

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632679(v=vs.85).aspx
      # HWND WINAPI CreateWindow(
      #   _In_opt_ LPCTSTR   lpClassName,
      #   _In_opt_ LPCTSTR   lpWindowName,
      #   _In_     DWORD     dwStyle,
      #   _In_     int       x,
      #   _In_     int       y,
      #   _In_     int       nWidth,
      #   _In_     int       nHeight,
      #   _In_opt_ HWND      hWndParent,
      #   _In_opt_ HMENU     hMenu,
      #   _In_opt_ HINSTANCE hInstance,
      #   _In_opt_ LPVOID    lpParam)
      def CreateWindow(lpClassName, lpWindowName, dwStyle, x, y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam)
        CreateWindowEx(0, lpClassName, lpWindowName, dwStyle, x, y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam)
      end

      #define EnumTaskWindows(hTask, lpfn, lParam) EnumThreadWindows(HandleToUlong(hTask), lpfn, lParam)
      def EnumTaskWindows(hTask, lpfn, lParam) EnumThreadWindows(HandleToUlong(hTask), lpfn, lParam) end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633509(v=vs.85).aspx
      # HWND WINAPI GetNextWindow(
      #   _In_  HWND hWnd,
      #   _In_  UINT wCmd )
      #define GetNextWindow(hWnd, wCmd) GetWindow(hWnd, wCmd)
      alias_method :GetNextWindow, :GetWindow

      #define GetSysModalWindow() (NULL)
      def GetSysModalWindow; nil end

      #define SetSysModalWindow(hWnd) (NULL)
      def SetSysModalWindow(hWnd) nil end

      #define GetWindowTask(hWnd) \
      # ((HANDLE)(DWORD_PTR)GetWindowThreadProcessId(hWnd, NULL))
      def GetWindowTask(hWnd) GetWindowThreadProcessId(hWnd, nil) end

      #define GetInstanceModule(hInstance) (HMODULE)(hInstance)
      def GetInstanceModule(hInstance) hInstance end

      #define GetFirstChild(hwnd) GetTopWindow(hwnd)
      alias_method :GetFirstChild, :GetTopWindow

      #define GetFirstSibling(hwnd) GetWindow(hwnd,GW_HWNDFIRST)
      def GetFirstSibling(hwnd) GetWindow(hwnd, GW_HWNDFIRST) end

      #define GetLastSibling(hwnd) GetWindow(hwnd,GW_HWNDLAST)
      def GetLastSibling(hwnd) GetWindow(hwnd, GW_HWNDLAST) end

      #define GetNextSibling(hwnd) GetWindow(hwnd,GW_HWNDNEXT)
      def GetNextSibling(hwnd) GetWindow(hwnd, GW_HWNDNEXT) end

      #define GetPrevSibling(hwnd) GetWindow(hwnd,GW_HWNDPREV)
      def GetPrevSibling(hwnd) GetWindow(hwnd, GW_HWNDPREV) end

      #define GetWindowStyle(hwnd) ((DWORD)GetWindowLong(hwnd,GWL_STYLE))
      def GetWindowStyle(hwnd) GetWindowLong(hwnd, GWL_STYLE) end

      #define GetWindowOwner(hwnd) GetWindow(hwnd,GW_OWNER)
      def GetWindowOwner(hwnd) GetWindow(hwnd, GW_OWNER) end

      #define GetWindowID(hwnd) GetDlgCtrlID(hwnd)
      alias_method :GetWindowID, :GetDlgCtrlID

      #define GetWindowExStyle(hwnd) ((DWORD)GetWindowLong(hwnd,GWL_EXSTYLE))
      def GetWindowExStyle(hwnd) GetWindowLong(hwnd, GWL_EXSTYLE) end

      #define GetWindowFont(hwnd) FORWARD_WM_GETFONT((hwnd),SNDMSG)
      def GetWindowFont(hwnd) FORWARD_WM_GETFONT(hwnd, SNDMSG) end

      #define GetWindowInstance(hwnd) ((HMODULE)GetWindowLong(hwnd,GWL_HINSTANCE))
      def GetWindowInstance(hwnd) GetWindowLong(hwnd, GWL_HINSTANCE) end

      #define IsMaximized(hwnd) IsZoomed(hwnd)
      alias_method :IsMaximized, :IsZoomed

      #define IsMinimized(hwnd) IsIconic(hwnd)
      alias_method :IsMinimized, :IsIconic

      #define     IsRestored(hwnd)    ((GetWindowStyle(hwnd) & (WS_MINIMIZE | WS_MAXIMIZE)) == 0L)
      def IsRestored(hwnd) (GetWindowStyle(hwnd) & (WS_MINIMIZE | WS_MAXIMIZE)) == 0 end

      #define SetWindowFont(hwnd,hfont,fRedraw) FORWARD_WM_SETFONT((hwnd),(hfont),(fRedraw),SNDMSG)
      def SetWindowFont(hwnd, hfont, fRedraw) FORWARD_WM_SETFONT(hwnd, hfont, fRedraw, SNDMSG) end

      #define SetWindowRedraw(hwnd,fRedraw) ((void)SNDMSG(hwnd,WM_SETREDRAW,(wparam: fRedraw)
      def SetWindowRedraw(hwnd, fRedraw) send_window_message(hwnd, :SETREDRAW, wparam: fRedraw) end

      #define SubclassWindow(hwnd,lpfn) ((WNDPROC)SetWindowLong((hwnd),GWL_WNDPROC,(LPARAM)(WNDPROC)(lpfn)))
      def SubclassWindow(hwnd, lpfn) SetWindowLong(hwnd, GWL_WNDPROC, lpfn) end

      private def send_window_message(hwnd, message, wparam: 0, lparam: 0)
        SendMessage(hwnd, WindowMessage[message], wpram, lparam)
      end
    end
  end
end
