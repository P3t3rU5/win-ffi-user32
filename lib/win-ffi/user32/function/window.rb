require 'win-ffi/core/struct/rect'

require_relative '../typedef/hmenu'

require_relative '../enum/window/function/animate_window_flag'
require_relative '../enum/window/function/get_window_flag'
require_relative '../enum/window/function/set_window_pos_flag'
require_relative '../enum/window/function/show_window_flag'
require_relative '../enum/window/function/system_metrics_flag'
require_relative '../enum/resource/menu/track_popup_menu_flag'
require_relative '../enum/window/style/window_style'
require_relative '../enum/window/style/window_style_ex'
require_relative '../enum/window/function/get_ancestor_flag'
require_relative '../enum/window/message_filter'
require_relative '../enum/window/message_filter_info'
require_relative '../enum/window/function/window_display_affinity'
require_relative '../enum/interaction/feedback_type'
require_relative '../enum/window/function/child_window_from_point_ex_flag'
require_relative '../enum/window/multiple_document_interface_tile'

require_relative '../struct/window/alt_tab_info'
require_relative '../struct/window/flash_window_info'
require_relative '../struct/window/gui_thread_info'
require_relative '../struct/window/update_layered_window_info'
require_relative '../struct/window/title_bar_info'
require_relative '../struct/window/change_filter_struct'
require_relative '../struct/window/info'
require_relative '../struct/window/placement'

module WinFFI
  module User32

    typedef :pointer, :hdwp

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-adjustwindowrectexfordpi
    # BOOL AdjustWindowRect( _Inout_  LPRECT lpRect, _In_     DWORD dwStyle, _In_     BOOL bMenu )
    def self.AdjustWindowRect(lpRect, dwStyle, bMenu) end
    attach_function 'AdjustWindowRect', [RECT.ptr, WindowStyle, :bool], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-adjustwindowrectexfordpi
    # BOOL AdjustWindowRectEx( _Inout_ LPRECT lpRect, _In_     DWORD dwStyle, _In_ BOOL bMenu, _In_ DWORD dwExStyle )
    def self.AdjustWindowRectEx(lpRect, dwStyle, bMenu, dwExStyle) end
    attach_function 'AdjustWindowRectEx', [RECT.ptr, WindowStyle, :bool, WindowStyleExtended], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632668
    # BOOL AllowSetForegroundWindow( _In_  DWORD dwProcessId )
    def self.AllowSetForegroundWindow(dwProcessId) end
    attach_function 'AllowSetForegroundWindow', [:dword], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632669
    # BOOL AnimateWindow( _In_  HWND hwnd, _In_  DWORD dwTime, _In_  DWORD dwFlags )
    def self.AnimateWindow(hwnd, dwTime, dwFlags) end
    attach_function 'AnimateWindow', [:hwnd, :dword, AnimateWindowFlag], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632670
    # This function is provided only for compatibility with 16-bit versions of Windows. It is generally not useful.
    # BOOL AnyPopup()
    def self.AnyPopup; end
    attach_function 'AnyPopup', [], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632671
    # UINT ArrangeIconicWindows(_In_  HWND hWnd )
    def self.ArrangeIconicWindows(hWnd) end
    attach_function 'ArrangeIconicWindows', [:hwnd], :uint

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632672
    # HDWP BeginDeferWindowPos( _In_  int nNumWindows )
    def self.BeginDeferWindowPos(nNumWindows) end
    attach_function 'BeginDeferWindowPos', [:int], :hdwp

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632673
    # BOOL BringWindowToTop(_In_  HWND hWnd )
    def self.BringWindowToTop(hWnd) end
    attach_function 'BringWindowToTop', [:hwnd], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632674
    # WORD CascadeWindows(
    #   _In_opt_  HWND hwndParent,
    #   _In_      UINT wHow,
    #   _In_opt_  const RECT *lpRect,
    #   _In_      UINT cKids,
    #   _In_opt_  const HWND *lpKids )
    def self.CascadeWindows(hwndParent, wHow, lpRect, cKids, lpKids) end
    attach_function 'CascadeWindows', [:hwnd, MultipleDocumentInterfaceTile, RECT.ptr, :uint, :pointer], :word

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632676
    # HWND ChildWindowFromPoint( _In_  HWND hWndParent, _In_  POINT Point )
    def self.ChildWindowFromPoint(hWndParent, point) end
    attach_function 'ChildWindowFromPoint', [:hwnd, POINT], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632677
    # HWND ChildWindowFromPointEx( _In_  HWND hwndParent, _In_  POINT pt, _In_  UINT uFlags )
    def self.ChildWindowFromPointEx(hwndParent, pt, uFlags) end
    attach_function 'ChildWindowFromPointEx', [:hwnd, POINT, ChildWindowFromPointExFlag], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632678
    # Actually minimizes
    # BOOL CloseWindow(  __in HWND hWnd )
    def self.CloseWindow(hWnd) end
    attach_function 'CloseWindow', [:hwnd], :bool

    # void CreateOwnedToolWindow(
    #   _In_      IInspectable *pOwnerWindow,
    #   _In_opt_  LPCTSTR lpWindowNTitle,
    #   _In_      int x,
    #   _In_      int y,
    #   _In_      UINT32 nWidth,
    #   _In_      UINT32 nHeight,
    #   _Out_     IInspectable **ppWindow)
    # attach_function 'CreateOwnedToolWindow', [:pointer, :string, :int, :int, :uint32, :uint32, :pointer], :void

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632680
    # HWND CreateWindowEx(
    #   __in      DWORD     dwExStyle,
    #   __in_opt  LPCTSTR   lpClassName,
    #   __in_opt  LPCTSTR   lpWindowName,
    #   __in      DWORD     dwStyle,
    #   __in      int       x,
    #   __in      int       y,
    #   __in      int       nWidth,
    #   __in      int       nHeight,
    #   __in_opt  HWND      hWndParent,
    #   __in_opt  HMENU     hMenu,
    #   __in_opt  HINSTANCE hInstance,
    #   __in_opt  LPVOID    lpParam )
    def self.CreateWindowEx(
        dwExStyle, lpClassName, lpWindowName, dwStyle, x, y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam) end
    encoded_function 'CreateWindowEx', [:dword, :pointer, :string , :dword, :int, :int, :int, :int, :hwnd, :hmenu,
                                        :hinstance, :pointer], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632681
    # HDWP DeferWindowPos(
    #   _In_      HDWP hWinPosInfo,
    #   _In_      HWND hWnd,
    #   _In_opt_  HWND hWndInsertAfter,
    #   _In_      int x,
    #   _In_      int y,
    #   _In_      int cx,
    #   _In_      int cy,
    #   _In_      UINT uFlags )
    def self.DeferWindowPos(hWinPosInfo, hWnd, hWndInsertAfter, x, y, cx, cy, uFlags) end
    attach_function 'DeferWindowPos', [:pointer, :hwnd, :hwnd, :int, :int, :int, :int, SetWindowPosFlag], :hdwp

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644979
    # BOOL DeregisterShellHookWindow( _In_  HWND hWnd )
    def self.DeregisterShellHookWindow(hWnd) end
    attach_function 'DeregisterShellHookWindow', [:hwnd], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632682
    # BOOL DestroyWindow(__in  HWND hWnd)
    def self.DestroyWindow(hWnd) end
    attach_function 'DestroyWindow', [:hwnd], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633440
    # BOOL EndDeferWindowPos( _In_  HDWP hWinPosInfo )
    def self.EndDeferWindowPos(hWinPosInfo) end
    attach_function 'EndDeferWindowPos', [:hdwp], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633492
    # This function is not intended for general use. It may be altered or unavailable in subsequent versions of Windows.
    # BOOL EndTask( _In_  HWND hWnd, _In_  BOOL fShutDown, _In_  BOOL fForce )
    def self.EndTask(hWnd, fShutDown, fForce) end
    attach_function 'EndTask', [:hwnd, :bool, :bool], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633493
    # BOOL CALLBACK EnumChildProc(
    # _In_ HWND   hwnd,
    # _In_ LPARAM lParam)
    EnumChildProc = callback 'EnumChildProc', [:hwnd, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633494
    # BOOL EnumChildWindows( _In_opt_ HWND hWndParent, _In_ WNDENUMPROC lpEnumFunc, _In_ LPARAM lParam )
    def self.EnumChildWindows(hWndParent, lpEnumFunc, lParam) end
    attach_function 'EnumChildWindows', [:hwnd, EnumChildProc, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633496
    # BOOL CALLBACK EnumThreadWndProc( _In_  HWND hwnd, _In_  LPARAM lParam )
    EnumThreadWndProc = callback 'EnumThreadWndProc', [:hwnd, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633495
    # BOOL EnumThreadWindows( _In_  DWORD dwThreadId, _In_  WNDENUMPROC lpfn, _In_  LPARAM lParam )
    def self.EnumThreadWindows(dwThreadId, lpfn, lParam) end
    attach_function 'EnumThreadWindows', [:dword, EnumThreadWndProc, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633498
    # BOOL CALLBACK EnumWindowsProc( _In_ HWND   hwnd, _In_ LPARAM lParam )
    EnumWindowsProc = callback 'EnumWindowsProc', [:hwnd, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633497
    # BOOL EnumWindows( _In_  WNDENUMPROC lpEnumFunc, _In_  LPARAM lParam )
    def self.EnumWindows(lpClassName, lpWindowName) end
    attach_function 'EnumWindows', [EnumWindowsProc, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633499
    # HWND FindWindow( _In_opt_  LPCTSTR lpClassName, _In_opt_  LPCTSTR lpWindowName )
    def self.FindWindow(lpClassName, lpWindowName) end
    encoded_function 'FindWindow', [:buffer_in, :buffer_in], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633500
    # HWND FindWindowEx(
    #   _In_opt_  HWND hwndParent,
    #   _In_opt_  HWND hwndChildAfter,
    #   _In_opt_  LPCTSTR lpszClass,
    #   _In_opt_  LPCTSTR lpszWindow )
    def self.FindWindowEx(hwndParent, hwndChildAfter, lpszClass, lpszWindow) end
    encoded_function 'FindWindowEx', [:hwnd, :hwnd, :buffer_in, :buffer_in], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633501
    # BOOL GetAltTabInfo(
    #   _In_opt_   HWND hwnd,
    #   _In_       int iItem,
    #   _Inout_    PALTTABINFO pati,
    #   _Out_opt_  LPTSTR pszItemText,
    #   _In_       UINT cchItemText )
    def self.GetAltTabInfo(hwnd, iItem, pati, pszItemText, cchItemText) end
    encoded_function 'GetAltTabInfo', [:hwnd, :int, ALTTABINFO.ptr, :pointer, :uint], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633502
    # HWND GetAncestor( _In_  HWND hwnd, _In_  UINT gaFlags )
    def self.GetAncestor(hwnd, gaFlags) end
    attach_function 'GetAncestor', [:hwnd, GetAncestorFlag], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633503
    # BOOL GetClientRect( __in   HWND   hWnd, __out  LPRECT lpRect)
    def self.GetClientRect(hWnd, lpRect) end
    attach_function 'GetClientRect', [:hwnd, RECT.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633504
    # HWND GetDesktopWindow(void)
    def self.GetDesktopWindow; end
    attach_function 'GetDesktopWindow', [], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633505
    # HWND GetForegroundWindow(void)
    def self.GetForegroundWindow; end
    attach_function 'GetForegroundWindow', [], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633506
    # BOOL GetGUIThreadInfo( _In_     DWORD idThread, _Inout_  LPGUITHREADINFO lpgui )
    def self.GetGUIThreadInfo(idThread, lpgui) end
    attach_function 'GetGUIThreadInfo', [:dword, GUITHREADINFO.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633507
    # HWND GetLastActivePopup( _In_  HWND hWnd )
    def self.GetLastActivePopup(hWnd) end
    attach_function 'GetLastActivePopup', [:hwnd], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633510
    # HWND GetParent( _In_  HWND hWnd )
    def self.GetParent(hWnd) end
    attach_function 'GetParent', [:hwnd], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633511
    # BOOL GetProcessDefaultLayout( _Out_  DWORD *pdwDefaultLayout )
    def self.GetProcessDefaultLayout(pdwDefaultLayout) end
    attach_function 'GetProcessDefaultLayout', [:dword], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633512
    # HWND GetShellWindow(void)
    def self.GetShellWindow; end
    attach_function 'GetShellWindow', [], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633513
    # BOOL GetTitleBarInfo( _In_     HWND hwnd, _Inout_  PTITLEBARINFO pti )
    def self.GetTitleBarInfo(hwnd, pti) end
    attach_function 'GetTitleBarInfo', [:hwnd, TITLEBARINFO.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633514
    # HWND GetTopWindow(   _In_opt_  HWND hWnd )
    def self.GetTopWindow(hwnd) end
    attach_function 'GetTopWindow', [:hwnd], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633515
    # HWND GetWindow( _In_  HWND hWnd, _In_  UINT uCmd )
    def self.GetWindow(hWnd, uCmd) end
    attach_function 'GetWindow', [:hwnd, GetWindowFlag], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633516
    # BOOL GetWindowInfo( __in     HWND        hwnd, __inout  PWINDOWINFO pwi)
    def self.GetWindowInfo(hWnd, pwi) end
    attach_function 'GetWindowInfo', [:hwnd, WINDOWINFO.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633517
    # UINT GetWindowModuleFileName( _In_   HWND hwnd, _Out_  LPTSTR lpszFileName, _In_   UINT cchFileNameMax )
    def self.GetWindowModuleFileName(hwnd, lpszFileName, cchFileNameMax) end
    encoded_function 'GetWindowModuleFileName', [:hwnd, :string, :uint], :uint

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633518
    # BOOL GetWindowPlacement( __in     HWND             hWnd, __inout  WINDOWPLACEMENT *lpwndpl)
    def self.GetWindowPlacement(hWnd, lpwndpl) end
    attach_function 'GetWindowPlacement', [:hwnd, WINDOWPLACEMENT.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633519
    # BOOL GetWindowRect( __in   HWND   hWnd, __out  LPRECT lpRect)
    def self.GetWindowRect(hWnd, lpRect) end
    attach_function 'GetWindowRect', [:hwnd, RECT.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633520
    # int GetWindowText( _In_   HWND hWnd, _Out_  LPTSTR lpString, _In_   int nMaxCount )
    def self.GetWindowText(hWnd, lpString, nMaxCount) end
    encoded_function 'GetWindowText', [:hwnd, :pointer, :int], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633521
    # int GetWindowTextLength( _In_  HWND hWnd )
    def self.GetWindowTextLength(hWnd) end
    encoded_function 'GetWindowTextLength', [:hwnd], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633522
    # DWORD GetWindowThreadProcessId( _In_       HWND hWnd, _Out_opt_  LPDWORD lpdwProcessId )
    def self.GetWindowThreadProcessId(hWnd, lpdwProcessId) end
    attach_function 'GetWindowThreadProcessId', [:hwnd, :pointer], :dword

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633523
    # This function is not intended for general use. It may be altered or unavailable in subsequent versions of Windows.
    # int InternalGetWindowText( _In_   HWND hWnd, _Out_  LPWSTR lpString, _In_   int nMaxCount )
    def self.InternalGetWindowText(hWnd, lpString, nMaxCount) end
    attach_function 'InternalGetWindowText', [:hwnd, :string, :int], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633524
    # BOOL IsChild( _In_  HWND hWndParent, _In_  HWND hWnd )
    def self.IsChild(hWndParent, hWnd) end
    attach_function 'IsChild', [:hwnd, :hwnd], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633526
    # BOOL IsHungAppWindow( _In_  HWND hWnd )
    def self.IsHungAppWindow(hWnd) end
    attach_function 'IsHungAppWindow', [:hwnd], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633527
    # BOOL IsIconic( _In_  HWND hWnd )
    def self.IsIconic(hWnd) end
    attach_function 'IsIconic', [:hwnd], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633528
    # BOOL IsWindow( _In_opt_  HWND hWnd )
    def self.IsWindow(hWnd) end
    attach_function 'IsWindow', [:hwnd], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633529
    # BOOL IsWindowUnicode( _In_  HWND hWnd )
    def self.IsWindowUnicode(hWnd) end
    attach_function 'IsWindowUnicode', [:hwnd], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633530
    # BOOL IsWindowVisible( _In_  HWND hWnd )
    def self.IsWindowVisible(hWnd) end
    attach_function 'IsWindowVisible', [:hwnd], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633531
    # BOOL IsZoomed( _In_  HWND hWnd )
    def self.IsZoomed(hWnd) end
    attach_function 'IsZoomed', [:hwnd], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633532
    # BOOL LockSetForegroundWindow( _In_  UINT uLockCode )
    def self.LockSetForegroundWindow(uLockCode) end
    attach_function 'LockSetForegroundWindow', [:uint], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633534
    # BOOL MoveWindow(
    #   __in  HWND hWnd,
    #   __in  int  X,
    #   __in  int  Y,
    #   __in  int  nWidth,
    #   __in  int  nHeight,
    #   __in  BOOL bRepaint)
    def self.MoveWindow(hWnd, x, y, nWidth, nHeight, bRepaint) end
    attach_function 'MoveWindow', [:hwnd, :int, :int, :int, :int, :bool], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633535
    # BOOL OpenIcon( _In_  HWND hWnd )
    def self.OpenIcon(hWnd) end
    attach_function 'OpenIcon', [:hwnd], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633537
    # HWND RealChildWindowFromPoint( _In_  HWND hwndParent, _In_  POINT ptParentClientCoords )
    def self.RealChildWindowFromPoint(hwndParent, ptParentClientCoords) end
    attach_function 'RealChildWindowFromPoint', [:hwnd, POINT.ptr], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633538
    # UINT RealGetWindowClass( _In_   HWND hwnd, _Out_  LPTSTR pszType, _In_   UINT cchType )
    def self.RealGetWindowClass(hwnd, pszType, cchType) end
    encoded_function 'RealGetWindowClass', [:hwnd, :string, :uint], :uint

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644989
    # BOOL RegisterShellHookWindow( _In_  HWND hWnd )
    def self.RegisterShellHookWindow(hWnd) end
    attach_function 'RegisterShellHookWindow', [:hwnd], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633539
    # BOOL SetForegroundWindow( _In_  HWND hWnd )
    def self.SetForegroundWindow(hWnd) end
    attach_function 'SetForegroundWindow', [:hwnd], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633540
    # BOOL SetLayeredWindowAttributes(_In_ HWND hwnd, _In_ COLORREF crKey, _In_ BYTE bAlpha, _In_ DWORD dwFlags )
    def self.SetLayeredWindowAttributes(hwnd, crKey, bAlpha, dwFlags) end
    attach_function 'SetLayeredWindowAttributes',
                    [:hwnd, :colorref, :byte, UpdateLayeredWindowFlag], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633541
    # HWND SetParent( _In_      HWND hWndChild, _In_opt_  HWND hWndNewParent )
    def self.SetParent(hWndChild, hWndNewParent) end
    attach_function 'SetParent', [:hwnd, :hwnd], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633542
    # BOOL SetProcessDefaultLayout( _In_  DWORD dwDefaultLayout )
    def self.SetProcessDefaultLayout(dwDefaultLayout) end
    attach_function 'SetProcessDefaultLayout', [:dword], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633544
    # BOOL SetWindowPlacement( __in     HWND             hWnd, __inout  WINDOWPLACEMENT *lpwndpl)
    def self.SetWindowPlacement(hWnd, lpwndpl) end
    attach_function 'SetWindowPlacement', [:hwnd, WINDOWPLACEMENT.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633545
    # BOOL SetWindowPos(
    #   _In_      HWND hWnd,
    #   _In_opt_  HWND hWndInsertAfter,
    #   _In_      int X,
    #   _In_      int Y,
    #   _In_      int cx,
    #   _In_      int cy,
    #   _In_      UINT uFlags )
    def self.SetWindowPos(hWnd, hWndInsertAfter, x, y, cx, cy, uFlags) end
    attach_function 'SetWindowPos', [:hwnd, :hwnd, :int, :int, :int, :int, SetWindowPosFlag], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633546
    # BOOL SetWindowText( __in      HWND    hWnd, __in_opt  LPCTSTR lpString)
    def self.SetWindowText(hWnd, lpString) end
    encoded_function 'SetWindowText', [:hwnd, :string], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633547
    # BOOL ShowOwnedPopups( _In_  HWND hWnd, _In_  BOOL fShow )
    def self.ShowOwnedPopups(hWnd, fShow) end
    attach_function 'ShowOwnedPopups', [:hwnd, :bool], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633548
    # BOOL ShowWindow( __in  HWND hWnd, __in  int  nCmdShow)
    def self.ShowWindow(hWnd, nCmdShow) end
    attach_function 'ShowWindow', [:hwnd, ShowWindowFlag], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633549
    # BOOL ShowWindowAsync( _In_  HWND hWnd, _In_  int nCmdShow )
    def self.ShowWindowAsync(hWnd, nCmdShow) end
    attach_function 'ShowWindowAsync', [:hwnd, :int], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633553
    # This function is not intended for general use. It may be altered or unavailable in subsequent versions of Windows.
    # VOID SwitchToThisWindow( _In_  HWND hWnd, _In_  BOOL fAltTab )
    def self.SwitchToThisWindow(hWnd, fAltTab) end
    attach_function 'SwitchToThisWindow', [:hwnd, :bool], :void

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633554
    # WORD TileWindows(
    #   _In_opt_  HWND hwndParent,
    #   _In_      UINT wHow,
    #   _In_opt_  const RECT *lpRect,
    #   _In_      UINT cKids,
    #   _In_opt_  const HWND *lpKids )
    def self.TileWindows(hwndParent, wHow, lpRect, cKids, lpKids) end
    attach_function 'TileWindows', [:hwnd, :uint, RECT.ptr, :uint, :pointer], :word

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633556
    # BOOL UpdateLayeredWindow(
    #   _In_      HWND hwnd,
    #   _In_opt_  HDC hdcDst,
    #   _In_opt_  POINT *pptDst,
    #   _In_opt_  SIZE *psize,
    #   _In_opt_  HDC hdcSrc,
    #   _In_opt_  POINT *pptSrc,
    #   _In_      COLORREF crKey,
    #   _In_opt_  BLENDFUNCTION *pblend,
    #   _In_      DWORD dwFlags )
    def self.UpdateLayeredWindow(hwnd, hdcDst, pptDst, psize, hdcSrc, pptSrc, crKey, pblend, dwFlags) end
    attach_function 'UpdateLayeredWindow', [:hwnd, :hdc, POINT.ptr, WinFFI::SIZE.ptr, :hdc, POINT.ptr, :colorref, :pointer, UpdateLayeredWindowFlag], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633558
    # HWND WindowFromPoint( _In_  POINT Point )
    def self.WindowFromPoint(point) end
    attach_function 'WindowFromPoint', [POINT.ptr], :hwnd

    # int CALLBACK WinMain(
    #   _In_  HINSTANCE hInstance,
    #   _In_  HINSTANCE hPrevInstance,
    #   _In_  LPSTR lpCmdLine,
    #   _In_  int nCmdShow )
    WinMain = callback 'WinMain', [:hinstance, :hinstance, :string, ShowWindowFlag], :int

    if WINDOWS_VERSION >= :xp
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-flashwindow
      # BOOL FlashWindow( _In_  HWND hWnd, _In_  BOOL bInvert )
      def self.FlashWindow(hWnd, bInvert) end
      attach_function 'FlashWindow', [:hwnd, :bool], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms679347
      # BOOL FlashWindowEx( _In_  PFLASHWINFO pfwi )
      def self.FlashWindowEx(pfwi) end
      attach_function 'FlashWindowEx', [FLASHWINFO.ptr], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633508
      # BOOL GetLayeredWindowAttributes(
      #   _In_       HWND hwnd,
      #   _Out_opt_  COLORREF *pcrKey,
      #   _Out_opt_  BYTE *pbAlpha,
      #   _Out_opt_  DWORD *pdwFlags )
      def self.GetLayeredWindowAttributes(hwnd, pcrKey, pbAlpha, pdwFlags) end
      attach_function 'GetLayeredWindowAttributes',
                      [:hwnd, :pointer, :pointer, UpdateLayeredWindowFlag], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633525
      # BOOL IsGUIThread( _In_  BOOL bConvert )
      def self.IsGUIThread(bConvert) end
      attach_function 'IsGUIThread', [:bool], :bool

      if WINDOWS_VERSION >= :vista
        # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632675
        # BOOL ChangeWindowMessageFilter( _In_  UINT message, _In_  DWORD dwFlag )
        def self.ChangeWindowMessageFilter(message, dwFlag) end
        attach_function 'ChangeWindowMessageFilter', [:uint, MessageFilter], :bool

        # BOOL GetWindowMinimizeRect ( HWND hwndToQuery, RECT* pRect )
        def self.GetWindowMinimizeRect(hwndToQuery, pRect) end
        attach_function 'GetWindowMinimizeRect', [:hwnd, RECT.ptr], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/aa969261
        # BOOL IsProcessDPIAware(void)
        def self.IsProcessDPIAware; end
        attach_function 'IsProcessDPIAware', [], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633533
        # BOOL LogicalToPhysicalPoint( _In_     HWND hWnd, _Inout_  LPPOINT lpPoint )
        def self.LogicalToPhysicalPoint(hWnd, lpPoint) end
        attach_function 'LogicalToPhysicalPoint', [:hwnd, POINT.ptr], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633536
        # BOOL PhysicalToLogicalPoint( _In_     HWND hWnd, _Inout_  LPPOINT lpPoint )
        def self.PhysicalToLogicalPoint(hWnd, lpPoint) end
        attach_function 'PhysicalToLogicalPoint', [:hwnd, POINT.ptr], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633543
        # BOOL SetProcessDPIAware(void)
        def self.SetProcessDPIAware; end
        attach_function 'SetProcessDPIAware', [], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/aa969269
        # BOOL SoundSentry(void)
        def self.SoundSentry; end
        attach_function 'SoundSentry', [], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633557
        # BOOL UpdateLayeredWindowIndirect(_In_ HWND hwnd, _In_ const UPDATELAYEREDWINDOWINFO *pULWInfo)
        def self.UpdateLayeredWindowIndirect(hwnd, pULWInfo) end
        attach_function 'UpdateLayeredWindowIndirect', [:hwnd, UPDATELAYEREDWINDOWINFO.ptr(:in)], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/aa969270
        #HWND WindowFromPhysicalPoint( _In_  POINT Point )
        def self.WindowFromPhysicalPoint(point) end
        attach_function 'WindowFromPhysicalPoint', [POINT.ptr(:in)], :hwnd

        if WINDOWS_VERSION >= 7
          # https://msdn.microsoft.com/en-us/library/windows/desktop/dd565861
          # BOOL CalculatePopupWindowPosition(
          #   _In_      const POINT *anchorPoint,
          #   _In_      const SIZE *windowSize,
          #   _In_      UINT flags,
          #   _In_opt_  RECT *excludeRect,
          #   _Out_     RECT *popupWindowPosition )
          def self.CalculatePopupWindowPosition(anchorPoint, windowSize, flags, excludeRect, popupWindowPosition) end
          attach_function 'CalculatePopupWindowPosition', [POINT.ptr(:in), SIZE.ptr(:in), TrackPopupMenuFlag, RECT.ptr, RECT.ptr(:out)], :bool

          # https://msdn.microsoft.com/en-us/library/windows/desktop/dd388202
          # BOOL ChangeWindowMessageFilterEx(
          #   _In_         HWND hWnd,
          #   _In_         UINT message,
          #   _In_         DWORD action,
          #   _Inout_opt_  PCHANGEFILTERSTRUCT pChangeFilterStruct )
          def self.ChangeWindowMessageFilterEx(hWnd, message, action, pChangeFilterStruct) end
          attach_function 'ChangeWindowMessageFilterEx', [:hwnd, :uint, MessageFilter, CHANGEFILTERSTRUCT.ptr], :bool

          # https://msdn.microsoft.com/en-us/library/windows/desktop/dd375338
          # BOOL GetWindowDisplayAffinity( _In_   HWND hWnd, _Out_  DWORD *dwAffinity )
          def self.GetWindowDisplayAffinity(hWnd, dwAffinity) end
          attach_function 'GetWindowDisplayAffinity', [:hwnd, WindowDisplayAffinity], :bool

          # https://msdn.microsoft.com/en-us/library/windows/desktop/dd375340
          # BOOL SetWindowDisplayAffinity( _In_  HWND hWnd, _In_  DWORD dwAffinity )
          def self.SetWindowDisplayAffinity(hWnd, dwAffinity) end
          attach_function 'SetWindowDisplayAffinity', [:hwnd, WindowDisplayAffinity], :bool

          if WINDOWS_VERSION >= 8
            # https://msdn.microsoft.com/en-us/library/windows/desktop/hh405402
            # BOOL SetWindowFeedbackSetting(
            #   _In_           HWND          hwnd,
            #   _In_           FEEDBACK_TYPE feedback,
            #   _In_           DWORD         flags,
            #   _In_           UINT32        size,
            #   _In_opt_ const VOID          *configuration)
            def self.SetWindowFeedbackSetting(hwnd, feedback, flags, size, configuration) end
            attach_function 'SetWindowFeedbackSetting', [:hwnd, FEEDBACK_TYPE, :dword, :uint, :pointer], :bool
          end
        end
      end
    end
  end
end