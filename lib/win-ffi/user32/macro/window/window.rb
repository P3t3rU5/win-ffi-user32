require 'win-ffi/user32/enum/window/get_window_flag'
require 'win-ffi/user32/enum/window/get_window_flag'

module WinFFI
  module User32
    class << self
      #define GetFirstChild(hwnd) GetTopWindow(hwnd)
      def GetFirstChild(hwnd)
        GetTopWindow(hwnd)
      end

      #define GetFirstSibling(hwnd) GetWindow(hwnd,GW_HWNDFIRST)
      def GetFirstSibling(hwnd)
        GetWindow(hwnd, GW::HWNDFIRST)
      end

      #define GetInstanceModule(hInstance) (HMODULE)(hInstance)
      def GetInstanceModule(hInstance)
        hInstance
      end

      #define GetLastSibling(hwnd) GetWindow(hwnd,GW_HWNDLAST)
      def GetLastSibling(hwnd)
        GetWindow(hwnd, GW::HWNDLAST)
      end

      #define GetNextSibling(hwnd) GetWindow(hwnd,GW_HWNDNEXT)
      def GetNextSibling(hwnd)
        GetWindow(hwnd, GW::HWNDNEXT)
      end

      #define GetPrevSibling(hwnd) GetWindow(hwnd,GW_HWNDPREV)
      def GetPrevSibling(hwnd)
        GetWindow(hwnd, GW::HWNDPREV)
      end


      #define GetWindowExStyle(hwnd) ((DWORD)GetWindowLong(hwnd,GWL_EXSTYLE))
      def GetWindowExStyle(hwnd)
        GetWindowLong(hwnd, GWL::EXSTYLE)
      end

      #define GetWindowFont(hwnd) FORWARD_WM_GETFONT((hwnd),SNDMSG)
      def GetWindowFont(hwnd)
        FORWARD_WM_GETFONT(hwnd, SNDMSG)
      end

      #define GetWindowID(hwnd) GetDlgCtrlID(hwnd)
      def GetWindowID(hwnd)
        GetDlgCtrlID(hwnd)
      end

      #define GetWindowInstance(hwnd) ((HMODULE)GetWindowLong(hwnd,GWL_HINSTANCE))
      def GetWindowInstance(hwnd)
        GetWindowLong(hwnd, GWL::HINSTANCE)
      end

      #define GetWindowOwner(hwnd) GetWindow(hwnd,GW_OWNER)
      def GetWindowOwner(hwnd)
        GetWindow(hwnd,GW::OWNER)
      end

      #define GetWindowStyle(hwnd) ((DWORD)GetWindowLong(hwnd,GWL_STYLE))
      def GetWindowStyle(hwnd)
        GetWindowLong(hwnd, GWL::STYLE)
      end


      #define IsMaximized(hwnd) IsZoomed(hwnd)
      def IsMaximized(hwnd)
        IsZoomed(hwnd)
      end

      #define IsMinimized(hwnd) IsIconic(hwnd)
      def IsMinimized(hwnd)
        IsIconic(hwnd)
      end

      #define SetWindowFont(hwnd,hfont,fRedraw) FORWARD_WM_SETFONT((hwnd),(hfont),(fRedraw),SNDMSG)
      def SetWindowFont(hwnd, hfont, fRedraw)
        # TODO
        # FORWARD_WM_SETFONT(hwnd, hfont, fRedraw, SNDMSG)
      end

      #define SetWindowRedraw(hwnd,fRedraw) ((void)SNDMSG(hwnd,WM_SETREDRAW,(WPARAM)(BOOL)(fRedraw),0))
      def SetWindowRedraw(hwnd, fRedraw)
        # TODO
        # ((void)SNDMSG(hwnd,WM_SETREDRAW,(WPARAM)(BOOL)(fRedraw),0))
      end

      #define SubclassWindow(hwnd,lpfn) ((WNDPROC)SetWindowLong((hwnd),GWL_WNDPROC,(LPARAM)(WNDPROC)(lpfn)))
      def SubclassWindow(hwnd, lpfn)
        # TODO
        # ((WNDPROC)SetWindowLong((hwnd),GWL_WNDPROC,(LPARAM)(WNDPROC)(lpfn)))
      end
    end
  end
end