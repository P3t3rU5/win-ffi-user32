require 'win-ffi/core/struct/rect'

require_relative '../typedef/hmenu'

require_relative '../enum/window/function/animate_window_flag'
require_relative '../enum/window/function/get_window_flag'
require_relative '../enum/window/function/set_window_pos_flag'
require_relative '../enum/window/function/show_window_flag'
require_relative '../enum/window/function/system_metrics_flag'
require_relative '../enum/resource/menu/track_popup_menu_flag'
require_relative '../enum/window/style'
require_relative '../enum/window/style/ex'
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
require_relative '../struct/window/message/placement'

module WinFFI
  module User32

    typedef :pointer, :hdwp

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-adjustwindowrect
    # @param [FFI::Pointer] lpRect
    # @param [Integer] dwStyle
    # @param [true, false] bMenu
    # @return [true, false]
    def self.AdjustWindowRect(lpRect, dwStyle, bMenu) end
    attach_function 'AdjustWindowRect', [RECT.ptr, WindowStyle, :bool], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-adjustwindowrectex
    # @param [FFI::Pointer] lpRect
    # @param [Integer] dwStyle
    # @param [true, false] bMenu
    # @param [Integer] dwExStyle
    # @return [true, false]
    def self.AdjustWindowRectEx(lpRect, dwStyle, bMenu, dwExStyle) end
    attach_function 'AdjustWindowRectEx', [RECT.ptr, WindowStyle, :bool, WindowStyleExtended], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-allowsetforegroundwindow
    # @param [Integer] dwProcessId
    # @return [true, false]
    def self.AllowSetForegroundWindow(dwProcessId) end
    attach_function 'AllowSetForegroundWindow', [:dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-animatewindow
    # @param [FFI::Pointer] hwnd
    # @param [Integer] dwTime
    # @param [Integer] dwFlags
    # @return [true, false]
    def self.AnimateWindow(hwnd, dwTime, dwFlags) end
    attach_function 'AnimateWindow', [:hwnd, :dword, AnimateWindowFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-anypopup
    # This function is provided only for compatibility with 16-bit versions of Windows. It is generally not useful.
    # @return [true, false]
    def self.AnyPopup; end
    attach_function 'AnyPopup', [], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-arrangeiconicwindows
    # @param [FFI::Pointer] hWnd
    # @return [Integer]
    def self.ArrangeIconicWindows(hWnd) end
    attach_function 'ArrangeIconicWindows', [:hwnd], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-begindeferwindowpos
    # @param [Integer] nNumWindows
    # @return [FFI::Pointer]
    def self.BeginDeferWindowPos(nNumWindows) end
    attach_function 'BeginDeferWindowPos', [:int], :hdwp

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-bringwindowtotop
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.BringWindowToTop(hWnd) end
    attach_function 'BringWindowToTop', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-cascadewindows
    # @param [FFI::Pointer] hwndParent
    # @param [Integer] wHow
    # @param [FFI::Pointer] lpRect
    # @param [Integer] cKids
    # @param [FFI::Pointer] lpKids
    def self.CascadeWindows(hwndParent, wHow, lpRect, cKids, lpKids) end
    attach_function 'CascadeWindows', [:hwnd, MultipleDocumentInterfaceTile, RECT.ptr(:in), :uint, :pointer], :word

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-childwindowfrompoint
    # @param [FFI::Pointer] hWndParent
    # @param [POINT] point
    # @return [FFI::Pointer]
    def self.ChildWindowFromPoint(hWndParent, point) end
    attach_function 'ChildWindowFromPoint', [:hwnd, POINT], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-childwindowfrompointex
    # @param [FFI::Pointer] hwndParent
    # @param [POINT] pt
    # @param [Integer] uFlags
    # @return [FFI::Pointer]
    def self.ChildWindowFromPointEx(hwndParent, pt, uFlags) end
    attach_function 'ChildWindowFromPointEx', [:hwnd, POINT, ChildWindowFromPointExFlag], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-closewindow
    # Actually minimizes
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.CloseWindow(hWnd) end
    attach_function 'CloseWindow', [:hwnd], :bool

    # @param [FFI::POinter] pOwnerWindow
    # @param [String] lpWindowNTitle
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @param [FFI::Pointer] ppWindow
    # def self.CreateOwnedToolWindow(pOwnerWindow, lpWindowNTitle, x, y, nWidth, nHeight, ppWindow) end
    # attach_function 'CreateOwnedToolWindow', [:pointer, :string, :int, :int, :uint32, :uint32, :pointer], :void

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createwindowexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createwindowexw
    # @param [Integer] dwExStyle
    # @param [String] lpClassName
    # @param [String] lpWindowName
    # @param [Integer] dwStyle
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @param [FFI::Pointer] hWndParent
    # @param [FFI::Pointer] hMenu
    # @param [FFI::Pointer] hInstance
    # @param [Integer] lpParam
    # @return [FFI::Pointer]
    def self.CreateWindowEx(
        dwExStyle, lpClassName, lpWindowName, dwStyle, x, y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam) end
    encoded_function 'CreateWindowEx', [:dword, :pointer, :string , :dword, :int, :int, :int, :int, :hwnd, :hmenu,
                                        :hinstance, :pointer], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-deferwindowpos
    # @param [FFI::Pointer] hWinPosInfo
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] hWndInsertAfter
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] cx
    # @param [Integer] cy
    # @param [Integer] uFlags
    # @return [FFI::Pointer]
    def self.DeferWindowPos(hWinPosInfo, hWnd, hWndInsertAfter, x, y, cx, cy, uFlags) end
    attach_function 'DeferWindowPos', [:pointer, :hwnd, :hwnd, :int, :int, :int, :int, SetWindowPosFlag], :hdwp

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-deregistershellhookwindow
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.DeregisterShellHookWindow(hWnd) end
    attach_function 'DeregisterShellHookWindow', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-destroywindow
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.DestroyWindow(hWnd) end
    attach_function 'DestroyWindow', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enddeferwindowpos
    # @param [FFI::Pointer] hWinPosInfo
    # @return [true, false]
    def self.EndDeferWindowPos(hWinPosInfo) end
    attach_function 'EndDeferWindowPos', [:hdwp], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-endtask
    # This function is not intended for general use. It may be altered or unavailable in subsequent versions of Windows.
    # @param [FFI::Pointer] hWnd
    # @param [true, false] fShutDown
    # @param [true, false] fForce
    # @return [true, false]
    def self.EndTask(hWnd, fShutDown, fForce) end
    attach_function 'EndTask', [:hwnd, :bool, :bool], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633493
    # BOOL CALLBACK EnumChildProc(_In_ HWND   hwnd, _In_ LPARAM lParam)
    EnumChildProc = callback 'EnumChildProc', [:hwnd, :lparam], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumchildwindows
    # @param [FFI::Pointer] hWndParent
    # @param [EnumChildProc] lpEnumFunc
    # @param [Integer] lParam
    # @return [true, false]
    def self.EnumChildWindows(hWndParent, lpEnumFunc, lParam) end
    attach_function 'EnumChildWindows', [:hwnd, EnumChildProc, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633496
    # BOOL CALLBACK EnumThreadWndProc( _In_  HWND hwnd, _In_  LPARAM lParam )
    EnumThreadWndProc = callback 'EnumThreadWndProc', [:hwnd, :lparam], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumthreadwindows
    # @param [Integer] dwThreadId
    # @param [EnumThreadWndProc] lpfn
    # @param [Integer] lParam
    # @return [true, false]
    def self.EnumThreadWindows(dwThreadId, lpfn, lParam) end
    attach_function 'EnumThreadWindows', [:dword, EnumThreadWndProc, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633498
    # BOOL CALLBACK EnumWindowsProc( _In_ HWND   hwnd, _In_ LPARAM lParam )
    EnumWindowsProc = callback 'EnumWindowsProc', [:hwnd, :lparam], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumwindows
    # @param [EnumWindowsProc] lpClassName
    # @param [Integer] lpWindowName
    # @return [true, false]
    def self.EnumWindows(lpClassName, lpWindowName) end
    attach_function 'EnumWindows', [EnumWindowsProc, :lparam], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-findwindowa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-findwindoww
    # @param [String] lpClassName
    # @param [String] lpWindowName
    # @return [FFI::Pointer]
    def self.FindWindow(lpClassName, lpWindowName) end
    encoded_function 'FindWindow', [:buffer_in, :buffer_in], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-findwindowexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-findwindowexw
    # @param [FFI::Pointer] hwndParent
    # @param [FFI::Pointer] hwndChildAfter
    # @param [String] lpszClass
    # @param [String] lpszWindow
    # @return [FFI::Pointer]
    def self.FindWindowEx(hwndParent, hwndChildAfter, lpszClass, lpszWindow) end
    encoded_function 'FindWindowEx', [:hwnd, :hwnd, :buffer_in, :buffer_in], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getalttabinfoa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getalttabinfow
    # @param [FFI::Pointer] hwnd
    # @param [Integer] iItem
    # @param [FFI::Pointer] pati
    # @param [String] pszItemText
    # @param [Integer] cchItemText
    # @return [true, false]
    def self.GetAltTabInfo(hwnd, iItem, pati, pszItemText, cchItemText) end
    encoded_function 'GetAltTabInfo', [:hwnd, :int, ALTTABINFO.ptr, :pointer, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getancestor
    # @param [FFI::Pointer] hwnd
    # @param [Integer] gaFlags
    # @return [FFI::Pointer]
    def self.GetAncestor(hwnd, gaFlags) end
    attach_function 'GetAncestor', [:hwnd, GetAncestorFlag], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getclientrect
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] lpRect
    # @return [true, false]
    def self.GetClientRect(hWnd, lpRect) end
    attach_function 'GetClientRect', [:hwnd, RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdesktopwindow
    # @return [FFI::Pointer]
    def self.GetDesktopWindow; end
    attach_function 'GetDesktopWindow', [], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getforegroundwindow
    # HWND GetForegroundWindow(void)
    # @return [FFI::Pointer]
    def self.GetForegroundWindow; end
    attach_function 'GetForegroundWindow', [], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getguithreadinfo
    # @param [INteger] idThread
    # @param [FFI::Pointer] lpgui
    # @return [true, false]
    def self.GetGUIThreadInfo(idThread, lpgui) end
    attach_function 'GetGUIThreadInfo', [:dword, GUITHREADINFO.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getlastactivepopup
    # @param [FFI::Pointer] hWnd
    # @return [FFI::Pointer]
    def self.GetLastActivePopup(hWnd) end
    attach_function 'GetLastActivePopup', [:hwnd], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getparent
    # @param [FFI::Pointer] hWnd
    # @return [FFI::Pointer]
    def self.GetParent(hWnd) end
    attach_function 'GetParent', [:hwnd], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getprocessdefaultlayout
    # @param [Integer] pdwDefaultLayout
    # @return [true, false]
    def self.GetProcessDefaultLayout(pdwDefaultLayout) end
    attach_function 'GetProcessDefaultLayout', [:dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getshellwindow
    # @return [FFI::Pointer]
    def self.GetShellWindow; end
    attach_function 'GetShellWindow', [], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-gettitlebarinfo
    # @param [FFI::Pointer] hwnd
    # @param [FFI::Pointer] pti
    # @return [true, false]
    def self.GetTitleBarInfo(hwnd, pti) end
    attach_function 'GetTitleBarInfo', [:hwnd, TITLEBARINFO.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-gettopwindow
    # @param [FFI::Pointer] hwnd
    # @return [FFI::Pointer]
    def self.GetTopWindow(hwnd) end
    attach_function 'GetTopWindow', [:hwnd], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindow
    # @param [FFI::Pointer] hWnd
    # @param [Integer] uCmd
    # @return [FFI::Pointer]
    def self.GetWindow(hWnd, uCmd) end
    attach_function 'GetWindow', [:hwnd, GetWindowFlag], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowinfo
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] pwi
    # @return [true, false]
    def self.GetWindowInfo(hWnd, pwi) end
    attach_function 'GetWindowInfo', [:hwnd, WINDOWINFO.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowmodulefilenamea
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowmodulefilenamew
    # @param [FFI::Pointer] hwnd
    # @param [String] lpszFileName
    # @param [Integer] cchFileNameMax
    # @return [Integer]
    def self.GetWindowModuleFileName(hwnd, lpszFileName, cchFileNameMax) end
    encoded_function 'GetWindowModuleFileName', [:hwnd, :string, :uint], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowplacement
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] lpwndpl
    # @return [true, false]
    def self.GetWindowPlacement(hWnd, lpwndpl) end
    attach_function 'GetWindowPlacement', [:hwnd, WINDOWPLACEMENT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowrect
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] lpRect
    # @return [true, false]
    def self.GetWindowRect(hWnd, lpRect) end
    attach_function 'GetWindowRect', [:hwnd, RECT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowtexta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowtextw
    # int GetWindowText( _In_   HWND hWnd, _Out_  LPTSTR lpString, _In_   int nMaxCount )
    # @param [FFI::Pointer] hWnd
    # @param [String] lpString
    # @param [Integer] nMaxCount
    # @return [Integer]
    def self.GetWindowText(hWnd, lpString, nMaxCount) end
    encoded_function 'GetWindowText', [:hwnd, :pointer, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowtextlengtha
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowtextlengthw
    # @param [FFI::Pointer] hWnd
    # @return [Integer]
    def self.GetWindowTextLength(hWnd) end
    encoded_function 'GetWindowTextLength', [:hwnd], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowthreadprocessid
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] lpdwProcessId
    # @return [Integer]
    def self.GetWindowThreadProcessId(hWnd, lpdwProcessId) end
    attach_function 'GetWindowThreadProcessId', [:hwnd, :pointer], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-internalgetwindowtext
    # This function is not intended for general use. It may be altered or unavailable in subsequent versions of Windows.
    # @param [FFI::Pointer] hWnd
    # @param [String] lpString
    # @param [Integer] nMaxCount
    # @return [Integer]
    def self.InternalGetWindowText(hWnd, lpString, nMaxCount) end
    attach_function 'InternalGetWindowText', [:hwnd, :string, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ischild
    # @param [FFI::Pointer] hWndParent
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.IsChild(hWndParent, hWnd) end
    attach_function 'IsChild', [:hwnd, :hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ishungappwindow
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.IsHungAppWindow(hWnd) end
    attach_function 'IsHungAppWindow', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isiconic
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.IsIconic(hWnd) end
    attach_function 'IsIconic', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-iswindow
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.IsWindow(hWnd) end
    attach_function 'IsWindow', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-iswindowunicode
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.IsWindowUnicode(hWnd) end
    attach_function 'IsWindowUnicode', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-iswindowvisible
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.IsWindowVisible(hWnd) end
    attach_function 'IsWindowVisible', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-iszoomed
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.IsZoomed(hWnd) end
    attach_function 'IsZoomed', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-locksetforegroundwindow
    # @param [Integer] uLockCode
    # @return [true, false]
    def self.LockSetForegroundWindow(uLockCode) end
    attach_function 'LockSetForegroundWindow', [:uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-movewindow
    # @param [FFI::Pointer] hWnd
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @param [true, false] bRepaint
    # @return [true, false]
    def self.MoveWindow(hWnd, x, y, nWidth, nHeight, bRepaint) end
    attach_function 'MoveWindow', [:hwnd, :int, :int, :int, :int, :bool], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-openicon
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.OpenIcon(hWnd) end
    attach_function 'OpenIcon', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-realchildwindowfrompoint
    # @param [FFI::Pointer] hwndParent
    # @param [POINT] ptParentClientCoords
    # @return [FFI::Pointer]
    def self.RealChildWindowFromPoint(hwndParent, ptParentClientCoords) end
    attach_function 'RealChildWindowFromPoint', [:hwnd, POINT], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-realgetwindowclassw
    # @param [FFI::Pointer] hwnd
    # @param [String] pszType
    # @param [Integer] cchType
    # @return [Integer]
    def self.RealGetWindowClass(hwnd, pszType, cchType) end
    encoded_function 'RealGetWindowClass', [:hwnd, :string, :uint], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registershellhookwindow
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.RegisterShellHookWindow(hWnd) end
    attach_function 'RegisterShellHookWindow', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setforegroundwindow
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.SetForegroundWindow(hWnd) end
    attach_function 'SetForegroundWindow', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setlayeredwindowattributes
    # @param [FFI::Pointer] hwnd
    # @param [Integer] crKey
    # @param [byte] bAlpha
    # @param [Integer] dwFlags
    # @return [true, false]
    def self.SetLayeredWindowAttributes(hwnd, crKey, bAlpha, dwFlags) end
    attach_function 'SetLayeredWindowAttributes',
                    [:hwnd, :colorref, :byte, UpdateLayeredWindowFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setparent
    # @param [FFI::Pointer] hWndChild
    # @param [FFI::Pointer] hWndNewParent
    # @return [FFI::Pointer]
    def self.SetParent(hWndChild, hWndNewParent) end
    attach_function 'SetParent', [:hwnd, :hwnd], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setprocessdefaultlayout
    # @param [Integer] dwDefaultLayout
    # @return [true, false]
    def self.SetProcessDefaultLayout(dwDefaultLayout) end
    attach_function 'SetProcessDefaultLayout', [:dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setwindowplacement
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] lpwndpl
    # @return [true, false]
    def self.SetWindowPlacement(hWnd, lpwndpl) end
    attach_function 'SetWindowPlacement', [:hwnd, WINDOWPLACEMENT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setwindowpos
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] hWndInsertAfter
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] cx
    # @param [Integer] cy
    # @param [Integer] uFlags
    # @return [true, false]
    def self.SetWindowPos(hWnd, hWndInsertAfter, x, y, cx, cy, uFlags) end
    attach_function 'SetWindowPos', [:hwnd, :hwnd, :int, :int, :int, :int, SetWindowPosFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setwindowtexta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setwindowtextw
    # @param [FFI::Pointer] hWnd
    # @param [String] lpString
    # @return [true, false]
    def self.SetWindowText(hWnd, lpString) end
    encoded_function 'SetWindowText', [:hwnd, :string], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-showownedpopups
    # @param [FFI::Pointer] hWnd
    # @param [true, false] fShow
    # @return [true, false]
    def self.ShowOwnedPopups(hWnd, fShow) end
    attach_function 'ShowOwnedPopups', [:hwnd, :bool], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-showwindow
    # @param [FFI::Pointer] hWnd
    # @param [Integer, Symbol] nCmdShow
    # @return [true, false]
    def self.ShowWindow(hWnd, nCmdShow) end
    attach_function 'ShowWindow', [:hwnd, ShowWindowFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-showwindowasync
    # @param [FFI::Pointer] hWnd
    # @param [Integer] nCmdShow
    # @return [true, false]
    def self.ShowWindowAsync(hWnd, nCmdShow) end
    attach_function 'ShowWindowAsync', [:hwnd, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-switchtothiswindow
    # This function is not intended for general use. It may be altered or unavailable in subsequent versions of Windows.
    # @param [FFI::Pointer] hWnd
    # @param [true, false] fAltTab
    def self.SwitchToThisWindow(hWnd, fAltTab) end
    attach_function 'SwitchToThisWindow', [:hwnd, :bool], :void

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-tilewindows
    # @param [FFI::Pointer] hwndParent
    # @param [Integer] wHow
    # @param [FFI::Pointer] lpRect
    # @param [Integer] cKids
    # @param [FFI::Pointer] lpKids
    # @return [Integer]
    def self.TileWindows(hwndParent, wHow, lpRect, cKids, lpKids) end
    attach_function 'TileWindows', [:hwnd, :uint, RECT.ptr, :uint, :pointer], :word

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-updatelayeredwindow
    # @param [FFI::Pointer] hwnd
    # @param [FFI::Pointer] hdcDst
    # @param [FFI::Pointer] pptDst
    # @param [FFI::Pointer] psize
    # @param [FFI::Pointer] hdcSrc
    # @param [FFI::Pointer] pptSrc
    # @param [Integer] crKey
    # @param [FFI::Pointer] pblend
    # @param [Integer] dwFlags
    # @return [true, false]
    def self.UpdateLayeredWindow(hwnd, hdcDst, pptDst, psize, hdcSrc, pptSrc, crKey, pblend, dwFlags) end
    attach_function 'UpdateLayeredWindow', [:hwnd, :hdc, POINT.ptr, SIZE.ptr, :hdc, POINT.ptr, :colorref, :pointer, UpdateLayeredWindowFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-windowfrompoint
    # @param [FFI::Pointer] point
    # @return [FFI::Pointer]
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
      # @param [FFI::Pointer] hWnd
      # @param [true, false] bInvert
      # @return [true, false]
      def self.FlashWindow(hWnd, bInvert) end
      attach_function 'FlashWindow', [:hwnd, :bool], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-flashwindowex
      # @param [FFI::Pointer] pfwi
      # @return [true, false]
      def self.FlashWindowEx(pfwi) end
      attach_function 'FlashWindowEx', [FLASHWINFO.ptr], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getlayeredwindowattributes
      # @param [FFI::Pointer] hwnd
      # @param [FFI::Pointer] pcrKey
      # @param [FFI::Pointer] pbAlpha
      # @param [Integer] pdwFlags
      # @return [true, false]
      def self.GetLayeredWindowAttributes(hwnd, pcrKey, pbAlpha, pdwFlags) end
      attach_function 'GetLayeredWindowAttributes',
                      [:hwnd, :pointer, :pointer, UpdateLayeredWindowFlag], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isguithread
      # @param [true, false] bConvert
      # @return [true, false]
      def self.IsGUIThread(bConvert) end
      attach_function 'IsGUIThread', [:bool], :bool

      if WINDOWS_VERSION >= :vista
        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-changewindowmessagefilter
        # @param [Integer] message
        # @param [Integer] dwFlag
        # @return [true, false]
        def self.ChangeWindowMessageFilter(message, dwFlag) end
        attach_function 'ChangeWindowMessageFilter', [:uint, MessageFilter], :bool

        # @param [FFI::Pointer] hwndToQuery
        # @param [FFI::Pointer] pRect
        # @return [true, false]
        def self.GetWindowMinimizeRect(hwndToQuery, pRect) end
        attach_function 'GetWindowMinimizeRect', [:hwnd, RECT.ptr], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isprocessdpiaware
        # @return [true, false]
        def self.IsProcessDPIAware; end
        attach_function 'IsProcessDPIAware', [], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-logicaltophysicalpoint
        # @param [FFI::Pointer] hWnd
        # @param [FFI::Pointer] lpPoint
        # @return [true, false]
        def self.LogicalToPhysicalPoint(hWnd, lpPoint) end
        attach_function 'LogicalToPhysicalPoint', [:hwnd, POINT.ptr], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-physicaltologicalpoint
        # @param [FFI::Pointer] hWnd
        # @param [FFI::Pointer] lpPoint
        # @return [true, false]
        def self.PhysicalToLogicalPoint(hWnd, lpPoint) end
        attach_function 'PhysicalToLogicalPoint', [:hwnd, POINT.ptr], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setprocessdpiaware
        # @return [true, false]
        def self.SetProcessDPIAware; end
        attach_function 'SetProcessDPIAware', [], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-soundsentry
        # @return [true, false]
        def self.SoundSentry; end
        attach_function 'SoundSentry', [], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633557
        # @param [FFI::Pointer] hwnd
        # @param [FFI::Pointer] pULWInfo
        # @return [true, false]
        def self.UpdateLayeredWindowIndirect(hwnd, pULWInfo) end
        attach_function 'UpdateLayeredWindowIndirect', [:hwnd, UPDATELAYEREDWINDOWINFO.ptr(:in)], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-windowfromphysicalpoint
        # @param [FFI::Pointer] point
        # @return [FFI::Pointer]
        def self.WindowFromPhysicalPoint(point) end
        attach_function 'WindowFromPhysicalPoint', [POINT.ptr(:in)], :hwnd

        if WINDOWS_VERSION >= 7
          # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-calculatepopupwindowposition
          # @param [FFI::Pointer] anchorPoint
          # @param [FFI::Pointer] windowSize
          # @param [Integer] flags
          # @param [FFI::Pointer] excludeRect
          # @param [FFI::Pointer] popupWindowPosition
          # @return [true, false]
          def self.CalculatePopupWindowPosition(anchorPoint, windowSize, flags, excludeRect, popupWindowPosition) end
          attach_function 'CalculatePopupWindowPosition', [POINT.ptr(:in), SIZE.ptr(:in), TrackPopupMenuFlag, RECT.ptr(:in), RECT.ptr(:out)], :bool

          # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-changewindowmessagefilterex
          # @param [FFI::Pointer] hWnd
          # @param [Integer] message
          # @param [Integer] action
          # @param [FFI::Pointer] pChangeFilterStruct
          # @return [true, false]
          def self.ChangeWindowMessageFilterEx(hWnd, message, action, pChangeFilterStruct) end
          attach_function 'ChangeWindowMessageFilterEx', [:hwnd, :uint, MessageFilter, CHANGEFILTERSTRUCT.ptr], :bool

          # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowdisplayaffinity
          # @param [FFI::Pointer] hWnd
          # @param [Integer] dwAffinity
          # @return [true, false]
          def self.GetWindowDisplayAffinity(hWnd, dwAffinity) end
          attach_function 'GetWindowDisplayAffinity', [:hwnd, WindowDisplayAffinity], :bool

          # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setwindowdisplayaffinity
          # @param [FFI::Pointer] hWnd
          # @param [Integer] dwAffinity
          # @return [true, false]
          def self.SetWindowDisplayAffinity(hWnd, dwAffinity) end
          attach_function 'SetWindowDisplayAffinity', [:hwnd, WindowDisplayAffinity], :bool

          if WINDOWS_VERSION >= 8
            # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setwindowfeedbacksetting
            # @param [FFI::Pointer] hwnd
            # @param [Integer] feedback
            # @param [Integer] flags
            # @param [Integer] size
            # @param [FFI::Pointer] configuration
            # @return [true, false]
            def self.SetWindowFeedbackSetting(hwnd, feedback, flags, size, configuration) end
            attach_function 'SetWindowFeedbackSetting', [:hwnd, FEEDBACK_TYPE, :dword, :uint, :pointer], :bool
          end
        end
      end
    end
  end
end