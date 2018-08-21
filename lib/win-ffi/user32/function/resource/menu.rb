require 'win-ffi/core/struct/point'

require_relative '../../typedef/hmenu'

require_relative '../../enum/resource/menu/flag'
require_relative '../../enum/resource/menu/track_popup_menu_flag'
require_relative '../../enum/resource/menu/get_menu_default_item_flag'
require_relative '../../enum/window/control/system_object_id'

require_relative '../../struct/resource/menu/menubar_info'
require_relative '../../struct/resource/menu/info'
require_relative '../../struct/resource/menu/item_info'
require_relative '../../struct/resource/menu/item_template'
require_relative '../../struct/resource/menu/tpm_params'

module WinFFI
  module User32
    PMB_ACTIVE = 0x00000001

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-appendmenua
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-appendmenuw
    # BOOL AppendMenu(_In_ HMENU hMenu, _In_ UINT uFlags, _In_ UINT_PTR uIDNewItem, _In_opt_  LPCTSTR lpNewItem )
    def self.AppendMenu(hMenu, uFlags, uIDNewItem, lpNewItem); end
    encoded_function 'AppendMenu', [:hmenu, MenuFlag, :uint_ptr, :pointer], :bool

    # Deprecated
    # http://winapi.freetechsecrets.com/win32/WIN32ChangeMenu.htm
    # BOOL ChangeMenuA(
    #   _In_ HMENU hMenu,
    #   _In_ UINT cmd,
    #   _In_opt_ LPCSTR lpszNewItem,
    #   _In_ UINT cmdInsert,
    #   _In_ UINT flags)
    # encoded_function 'ChangeMenu', [:hmenu, :uint, :string, :uint, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-checkmenuitem
    # DWORD CheckMenuItem( _In_  HMENU hmenu, _In_  UINT uIDCheckItem, _In_  UINT uCheck )
    def self.CheckMenuItem(hmenu, uIDCheckItem, uCheck); end
    attach_function 'CheckMenuItem', [:hmenu, :uint, :uint], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-checkmenuradioitem
    # BOOL CheckMenuRadioItem(
    #   _In_  HMENU hmenu,
    #   _In_  UINT idFirst,
    #   _In_  UINT idLast,
    #   _In_  UINT idCheck,
    #   _In_  UINT uFlags )
    def self.CheckMenuRadioItem(hmenu, idFirst, idLast, idCheck, uFlags); end
    attach_function 'CheckMenuRadioItem', [:hmenu, :uint, :uint, :uint, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createmenu
    # HMENU CreateMenu(void)
    def self.CreateMenu; end
    attach_function 'CreateMenu', [], :hmenu

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createpopupmenu
    # HMENU CreatePopupMenu(void)
    def self.CreatePopupMenu; end
    attach_function 'CreatePopupMenu', [], :hmenu

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-deletemenu
    # BOOL DeleteMenu( _In_  HMENU hMenu, _In_  UINT uPosition, _In_  UINT uFlags )
    def self.DeleteMenu(hMenu, uPosition, uFlags); end
    attach_function 'DeleteMenu', [:hmenu, :uint, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-destroymenu
    # BOOL DestroyMenu( _In_  HMENU hMenu )
    def self.DestroyMenu(hMenu); end
    attach_function 'DestroyMenu', [:hmenu], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawmenubar
    # BOOL DrawMenuBar( _In_  HWND hWnd )
    def self.DrawMenuBar(hWnd); end
    attach_function 'DrawMenuBar', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enablemenuitem
    # BOOL EnableMenuItem( _In_  HMENU hMenu, _In_  UINT uIDEnableItem, _In_  UINT uEnable )
    def self.EnableMenuItem(hMenu, uIDEnableItem, uEnable); end
    attach_function 'EnableMenuItem', [:hmenu, :uint, MenuFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-endmenu
    # BOOL EndMenu(void)
    def self.EndMenu; end
    attach_function 'EndMenu', [], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenu
    # HMENU GetMenu( _In_  HWND hWnd )
    def self.GetMenu(hWnd); end
    attach_function 'GetMenu', [:hwnd], :hmenu

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenubarinfo
    # BOOL GetMenuBarInfo(_In_ HWND hwnd, _In_ LONG idObject, _In_ LONG idItem, _Inout_ PMENUBARINFO pmbi )
    def self.GetMenuBarInfo(hwnd, idObject, idItem, pmbi); end
    attach_function 'GetMenuBarInfo', [:hwnd, SystemObjectId, :long, MENUBARINFO.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenucheckmarkdimensions
    # LONG GetMenuCheckMarkDimensions(void)
    def self.GetMenuCheckMarkDimensions; end
    attach_function 'GetMenuCheckMarkDimensions', [], :long

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenudefaultitem
    # UINT GetMenuDefaultItem( _In_  HMENU hMenu, _In_  UINT fByPos, _In_  UINT gmdiFlags )
    def self.GetMenuDefaultItem(hMenu, fByPos, gmdiFlags); end
    attach_function 'GetMenuDefaultItem', [:hmenu, :uint, GetMenuDefaultItemFlag], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenuinfo
    # BOOL GetMenuInfo( _In_     HMENU hmenu, _Inout_  LPMENUINFO lpcmi )
    def self.GetMenuInfo(hmenu, lpcmi); end
    attach_function 'GetMenuInfo', [:hmenu, MENUINFO.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenuitemcount
    # int GetMenuItemCount( _In_opt_  HMENU hMenu )
    def self.GetMenuItemCount(hMenu); end
    attach_function 'GetMenuItemCount', [:hmenu], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenuitemid
    # UINT GetMenuItemID( _In_  HMENU hMenu, _In_  int nPos )
    def self.GetMenuItemID(hMenu, nPos); end
    attach_function 'GetMenuItemID', [:hmenu, :int], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenuiteminfoa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenuiteminfow
    # BOOL GetMenuItemInfo(_In_ HMENU hMenu, _In_ UINT uItem, _In_ BOOL fByPosition, _Inout_ LPMENUITEMINFO lpmii)
    def self.GetMenuItemInfo(hMenu, uItem, fByPosition, lpmii); end
    encoded_function 'GetMenuItemInfo', [:hmenu, :uint, :bool, MENUITEMINFO.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenuitemrect
    # BOOL GetMenuItemRect(_In_opt_ HWND hWnd, _In_ HMENU hMenu, _In_ UINT uItem, _Out_ LPRECT lprcItem )
    def self.GetMenuItemRect(hWnd, hMenu, uItem, lprcItem); end
    attach_function 'GetMenuItemRect', [:hwnd, :hmenu, :uint, RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenustate
    # UINT GetMenuState( _In_  HMENU hMenu, _In_  UINT uId, _In_  UINT uFlags )
    def self.GetMenuState(hMenu, uId, uFlags); end
    attach_function 'GetMenuState', [:hmenu, :uint, :uint], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenustringa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenustringw
    # int GetMenuString(
    #   _In_       HMENU hMenu,
    #   _In_       UINT uIDItem,
    #   _Out_opt_  LPTSTR lpString,
    #   _In_       int nMaxCount,
    #   _In_       UINT uFlag )
    def self.GetMenuString(hMenu, uIDItem, lpString, nMaxCount, uFlag); end
    encoded_function 'GetMenuString', [:hmenu, :uint, :pointer, :int, :uint], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getsubmenu
    # HMENU GetSubMenu( _In_  HMENU hMenu, _In_  int nPos )
    def self.GetSubMenu(hMenu, nPos); end
    attach_function 'GetSubMenu', [:hmenu, :int], :hmenu

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getsystemmenu
    # HMENU GetSystemMenu( _In_  HWND hWnd, _In_  BOOL bRevert )
    def self.GetSystemMenu(hWnd, bRevert); end
    attach_function 'GetSystemMenu', [:hwnd, :bool], :hmenu

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-hilitemenuitem
    # BOOL HiliteMenuItem( _In_  HWND hwnd, _In_  HMENU hmenu, _In_  UINT uItemHilite, _In_  UINT uHilite )
    def self.HiliteMenuItem(hwnd, hmenu, uItemHilite, uHilite); end
    attach_function 'HiliteMenuItem', [:hwnd, :hmenu, :uint, MenuFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-insertmenua
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-insertmenuw
    # The InsertMenu function has been superseded by the InsertMenuItem function.
    # BOOL InsertMenu(
    #   _In_      HMENU hMenu,
    #   _In_      UINT uPosition,
    #   _In_      UINT uFlags,
    #   _In_      UINT_PTR uIDNewItem,
    #   _In_opt_  LPCTSTR lpNewItem )
    def self.InsertMenu(hMenu, uPosition, uFlags, uIDNewItem, lpNewItem); end
    encoded_function 'InsertMenu', [:hmenu, :uint, MenuFlag, :uint_ptr, :string], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-insertmenuitema
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-insertmenuitemw
    # BOOL InsertMenuItem(_In_ HMENU hMenu, _In_ UINT uItem, _In_ BOOL fByPosition, _In_ LPCMENUITEMINFO lpmii)
    def self.InsertMenuItem(hMenu, uItem, fByPosition, lpmii); end
    encoded_function 'InsertMenuItem', [:hmenu, :uint, :bool, MENUITEMINFO.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ismenu
    # BOOL IsMenu( _In_  HMENU hMenu )
    def self.IsMenu(hMenu); end
    attach_function 'IsMenu', [:hmenu], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadmenua
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadmenuw
    # HMENU LoadMenu( _In_opt_  HINSTANCE hInstance, _In_      LPCTSTR lpMenuName )
    def self.LoadMenu(hInstance, lpMenuName); end
    encoded_function 'LoadMenu', [:hinstance, :string], :hmenu

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadmenuindirecta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadmenuindirectw
    # HMENU LoadMenuIndirect( _In_  const MENUTEMPLATE *lpMenuTemplate )
    def self.LoadMenuIndirect(lpMenuTemplate); end
    encoded_function 'LoadMenuIndirect', [MENUITEMTEMPLATE.ptr], :hmenu

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-menuitemfrompoint
    # int MenuItemFromPoint( _In_opt_  HWND hWnd, _In_      HMENU hMenu, _In_      POINT ptScreen )
    def self.MenuItemFromPoint(hWnd, hMenu, ptScreen); end
    attach_function 'MenuItemFromPoint', [:hwnd, :hmenu, POINT], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-modifymenua
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-modifymenuw
    # The ModifyMenu function has been superseded by the SetMenuItemInfo function
    # BOOL ModifyMenu(
    #   _In_      HMENU hMnu,
    #   _In_      UINT uPosition,
    #   _In_      UINT uFlags,
    #   _In_      UINT_PTR uIDNewItem,
    #   _In_opt_  LPCTSTR lpNewItem )
    def self.ModifyMenu(hMnu, uPosition, uFlags, uIDNewItem, lpNewItem); end
    encoded_function 'ModifyMenu', [:hmenu, :uint, MenuFlag, :uint_ptr, :string], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-removemenu
    # BOOL RemoveMenu( _In_  HMENU hMenu, _In_  UINT uPosition, _In_  UINT uFlags )
    def self.RemoveMenu(hMenu, uPosition, uFlags); end
    attach_function 'RemoveMenu', [:hmenu, :uint, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setmenu
    # BOOL SetMenu( _In_      HWND hWnd, _In_opt_  HMENU hMenu )
    def self.SetMenu(hWnd, hMenu); end
    attach_function 'SetMenu', [:hwnd, :hmenu], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setmenudefaultitem
    # BOOL SetMenuDefaultItem( _In_  HMENU hMenu, _In_  UINT uItem, _In_  UINT fByPos )
    def self.SetMenuDefaultItem(hMenu, uItem, fByPos); end
    attach_function 'SetMenuDefaultItem', [:hmenu, :uint, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setmenuinfo
    # BOOL SetMenuInfo( _In_  HMENU hmenu, _In_  LPCMENUINFO lpcmi )
    def self.SetMenuInfo(hmenu, lpcmi); end
    attach_function 'SetMenuInfo', [:hmenu, MENUINFO.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setmenuitembitmaps
    # BOOL SetMenuItemBitmaps(
    #   _In_      HMENU hMenu,
    #   _In_      UINT uPosition,
    #   _In_      UINT uFlags,
    #   _In_opt_  HBITMAP hBitmapUnchecked,
    #   _In_opt_  HBITMAP hBitmapChecked )
    def self.SetMenuItemBitmaps(hMenu, uPosition, uFlags, hBitmapUnchecked, hBitmapChecked); end
    attach_function 'SetMenuItemBitmaps', [:hmenu, :uint, MenuFlag, :hbitmap, :hbitmap], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setmenuiteminfoa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setmenuiteminfow
    # BOOL SetMenuItemInfo(_In_ HMENU hMenu, _In_ UINT uItem, _In_ BOOL fByPosition, _In_ LPMENUITEMINFO lpmii)
    def self.SetMenuItemInfo(hMenu, uItem, fByPosition, lpmii); end
    encoded_function 'SetMenuItemInfo', [:hmenu, :uint, :bool, MENUITEMINFO.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-trackpopupmenu
    # BOOL TrackPopupMenu(
    #   _In_      HMENU hMenu,
    #   _In_      UINT uFlags,
    #   _In_      int x,
    #   _In_      int y,
    #   _In_      int nReserved,
    #   _In_      HWND hWnd,
    #   _In_opt_  const RECT *prcRect )
    def self.TrackPopupMenu(hMenu, uFlags, x, y, nReserved, hWnd, prcRect); end
    attach_function 'TrackPopupMenu', [:hmenu, TrackPopupMenuFlag, :int, :int, :int, :hwnd, RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-trackpopupmenuex
    # BOOL TrackPopupMenuEx(
    #   _In_      HMENU hmenu,
    #   _In_      UINT fuFlags,
    #   _In_      int x,
    #   _In_      int y,
    #   _In_      HWND hwnd,
    #   _In_opt_  LPTPMPARAMS lptpm )
    def self.TrackPopupMenuEx(hMenu, uFlags, x, y, hWnd, lptpm); end
    attach_function 'TrackPopupMenuEx', [:hmenu, TrackPopupMenuFlag, :int, :int, :hwnd, TPMPARAMS.ptr], :bool
  end
end