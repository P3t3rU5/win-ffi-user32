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
    # @param [FFI::Pointer] hMenu
    # @param [Integer] uFlags
    # @param [Integer] uIDNewItem
    # @param [FFI::Pointer] lpNewItem
    # @return [true, false]
    def self.AppendMenu(hMenu, uFlags, uIDNewItem, lpNewItem) end
    encoded_function 'AppendMenu', [:hmenu, MenuFlag, :uint_ptr, :pointer], :bool

    # Deprecated
    # http://winapi.freetechsecrets.com/win32/WIN32ChangeMenu.htm
    # @param [FFI::Pointer] hMenu
    # @param [Integer] cmd
    # @param [String] lpszNewItem
    # @param [Integer] cmdInsert
    # @param [Integer] flags
    # @return [true, false]
    # def self.ChangeMenu(hMenu, cmd, lpszNewItem, cmdInsert, flags) end
    # encoded_function 'ChangeMenu', [:hmenu, :uint, :string, :uint, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-checkmenuitem
    # @param [FFI::Pointer] hmenu
    # @param [Integer] uIDCheckItem
    # @param [Integer] uCheck
    # @return [Integer]
    def self.CheckMenuItem(hmenu, uIDCheckItem, uCheck) end
    attach_function 'CheckMenuItem', [:hmenu, :uint, :uint], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-checkmenuradioitem
    # @param [# @return [true, false]] hmenu
    # @param [Integer] idFirst
    # @param [Integer] idLast
    # @param [Integer] idCheck
    # @param [Integer] uFlags
    # @param [true, false] hmenu
    def self.CheckMenuRadioItem(hmenu, idFirst, idLast, idCheck, uFlags) end
    attach_function 'CheckMenuRadioItem', [:hmenu, :uint, :uint, :uint, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createmenu
    # @return [FFI::Pointer]
    def self.CreateMenu; end
    attach_function 'CreateMenu', [], :hmenu

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createpopupmenu
    # @return [FFI::Pointer]
    def self.CreatePopupMenu; end
    attach_function 'CreatePopupMenu', [], :hmenu

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-deletemenu
    # @param [FFI::Pointer] hMenu
    # @param [Integer] uPosition
    # @param [Integer] uFlags
    # @return [true, false]
    def self.DeleteMenu(hMenu, uPosition, uFlags) end
    attach_function 'DeleteMenu', [:hmenu, :uint, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-destroymenu
    # @param [FFI::Pointer] hMenu
    # @return [true, false]
    def self.DestroyMenu(hMenu) end
    attach_function 'DestroyMenu', [:hmenu], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawmenubar
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.DrawMenuBar(hWnd) end
    attach_function 'DrawMenuBar', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enablemenuitem
    # @param [FFI::Pointer] hMenu
    # @param [Integer] uIDEnableItem
    # @param [Integer] uEnable
    # @return [true, false]
    def self.EnableMenuItem(hMenu, uIDEnableItem, uEnable) end
    attach_function 'EnableMenuItem', [:hmenu, :uint, MenuFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-endmenu
    # @return [true, false]
    def self.EndMenu; end
    attach_function 'EndMenu', [], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenu
    # @param [FFI::Pointer] hWnd
    # @return [FFI::Pointer]
    def self.GetMenu(hWnd) end
    attach_function 'GetMenu', [:hwnd], :hmenu

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenubarinfo
    # @param [FFI::Pointer] hwnd
    # @param [Integer] idObject
    # @param [Integer] idItem
    # @param [FFI::Pointer] pmbi
    # @return [true, false]
    def self.GetMenuBarInfo(hwnd, idObject, idItem, pmbi); end
    attach_function 'GetMenuBarInfo', [:hwnd, SystemObjectId, :long, MENUBARINFO.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenucheckmarkdimensions
    # @return [Integer]
    def self.GetMenuCheckMarkDimensions; end
    attach_function 'GetMenuCheckMarkDimensions', [], :long

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenudefaultitem
    # @param [FFI::Pointer] hMenu
    # @param [Integer] fByPos
    # @param [Integer] gmdiFlags
    # @return [Integer]
    def self.GetMenuDefaultItem(hMenu, fByPos, gmdiFlags); end
    attach_function 'GetMenuDefaultItem', [:hmenu, :uint, GetMenuDefaultItemFlag], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenuinfo
    # @param [FFI::Pointer] hmenu
    # @param [FFI::Pointer] lpcmi
    # @return [true, false]
    def self.GetMenuInfo(hmenu, lpcmi); end
    attach_function 'GetMenuInfo', [:hmenu, MENUINFO.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenuitemcount
    # @param [FFI::Pointer] hMenu
    # @return [Integer]
    def self.GetMenuItemCount(hMenu); end
    attach_function 'GetMenuItemCount', [:hmenu], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenuitemid
    # @param [FFI::Pointer] hMenu
    # @param [Integer] nPos
    # @return [Integer]
    def self.GetMenuItemID(hMenu, nPos); end
    attach_function 'GetMenuItemID', [:hmenu, :int], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenuiteminfoa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenuiteminfow
    # @param [FFI::Pointer] hMenu
    # @param [Integer] uItem
    # @param [true, false] fByPosition
    # @param [FFI::Pointer] lpmii
    # @return [true, false]
    def self.GetMenuItemInfo(hMenu, uItem, fByPosition, lpmii); end
    encoded_function 'GetMenuItemInfo', [:hmenu, :uint, :bool, MENUITEMINFO.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenuitemrect
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] hMenu
    # @param [Integer] uItem
    # @param [FFI::Pointer] lprcItem
    # @return [true, false]
    def self.GetMenuItemRect(hWnd, hMenu, uItem, lprcItem); end
    attach_function 'GetMenuItemRect', [:hwnd, :hmenu, :uint, RECT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenustate
    # @param [FFI::Pointer] hMenu
    # @param [Integer] uId
    # @param [Integer] uFlags
    # @return [Integer]
    def self.GetMenuState(hMenu, uId, uFlags); end
    attach_function 'GetMenuState', [:hmenu, :uint, :uint], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenustringa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenustringw
    # @param [FFI::Pointer] hMenu
    # @param [Integer] uIDItem
    # @param [FFI::Pointer] lpString
    # @param [Integer] nMaxCount
    # @param [Integer] uFlag
    # @return [Integer]
    def self.GetMenuString(hMenu, uIDItem, lpString, nMaxCount, uFlag); end
    encoded_function 'GetMenuString', [:hmenu, :uint, :pointer, :int, :uint], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getsubmenu
    # @param [FFI::Pointer] hMenu
    # @param [Integer] nPos
    # @return [FFI::Pointer]
    def self.GetSubMenu(hMenu, nPos); end
    attach_function 'GetSubMenu', [:hmenu, :int], :hmenu

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getsystemmenu
    # @param [FFI::Pointer] hWnd
    # @param [true, false] bRevert
    # @return [FFI::Pointer]
    def self.GetSystemMenu(hWnd, bRevert); end
    attach_function 'GetSystemMenu', [:hwnd, :bool], :hmenu

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-hilitemenuitem
    # @param [FFI::Pointer] hwnd
    # @param [FFI::Pointer] hmenu
    # @param [Integer] uItemHilite
    # @param [Integer] uHilite
    # @return [true, false]
    def self.HiliteMenuItem(hwnd, hmenu, uItemHilite, uHilite); end
    attach_function 'HiliteMenuItem', [:hwnd, :hmenu, :uint, MenuFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-insertmenua
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-insertmenuw
    # The InsertMenu function has been superseded by the InsertMenuItem function.
    # @param [FFI::Pointer] hMenu
    # @param [Integer] uPosition
    # @param [Integer] uFlags
    # @param [Integer] uIDNewItem
    # @param [String] lpNewItem
    # @return [true, false]
    def self.InsertMenu(hMenu, uPosition, uFlags, uIDNewItem, lpNewItem); end
    encoded_function 'InsertMenu', [:hmenu, :uint, MenuFlag, :uint_ptr, :string], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-insertmenuitema
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-insertmenuitemw
    # @param [FFI::Pointer] hMenu
    # @param [Integer] uItem
    # @param [true, false] fByPosition
    # @param [FFI::Pointer] lpmii
    # @return [true, false]
    def self.InsertMenuItem(hMenu, uItem, fByPosition, lpmii); end
    encoded_function 'InsertMenuItem', [:hmenu, :uint, :bool, MENUITEMINFO.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ismenu
    # @param [FFI::Pointer] hMenu
    # @return [true, false]
    def self.IsMenu(hMenu); end
    attach_function 'IsMenu', [:hmenu], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadmenua
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadmenuw
    # @param [FFI::Pointer] hInstance
    # @param [String] lpMenuName
    # @return [FFI::Pointer]
    def self.LoadMenu(hInstance, lpMenuName); end
    encoded_function 'LoadMenu', [:hinstance, :string], :hmenu

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadmenuindirecta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadmenuindirectw
    # @param [FFI::Pointer] lpMenuTemplate
    # @return [FFI::Pointer]
    def self.LoadMenuIndirect(lpMenuTemplate); end
    encoded_function 'LoadMenuIndirect', [MENUITEMTEMPLATE.ptr], :hmenu

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-menuitemfrompoint
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] hMenu
    # @param [POINT] ptScreen
    # @return [Integer]
    def self.MenuItemFromPoint(hWnd, hMenu, ptScreen); end
    attach_function 'MenuItemFromPoint', [:hwnd, :hmenu, POINT], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-modifymenua
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-modifymenuw
    # The ModifyMenu function has been superseded by the SetMenuItemInfo function
    # @param [FFI::Pointer] hMnu
    # @param [Integer] uPosition
    # @param [Integer] uFlags
    # @param [Integer] uIDNewItem
    # @param [String] lpNewItem
    # @return [true, false]
    def self.ModifyMenu(hMnu, uPosition, uFlags, uIDNewItem, lpNewItem); end
    encoded_function 'ModifyMenu', [:hmenu, :uint, MenuFlag, :uint_ptr, :string], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-removemenu
    # @param [FFI::Pointer] hMenu
    # @param [Integer] uPosition
    # @param [Integer] uFlags
    # @return [true, false]
    def self.RemoveMenu(hMenu, uPosition, uFlags); end
    attach_function 'RemoveMenu', [:hmenu, :uint, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setmenu
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] hMenu
    # @return [true, false]
    def self.SetMenu(hWnd, hMenu); end
    attach_function 'SetMenu', [:hwnd, :hmenu], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setmenudefaultitem
    # @param [FFI::Pointer] hMenu
    # @param [Integer] uItem
    # @param [Integer] fByPos
    # @return [true, false]
    def self.SetMenuDefaultItem(hMenu, uItem, fByPos); end
    attach_function 'SetMenuDefaultItem', [:hmenu, :uint, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setmenuinfo
    # @param [FFI::Pointer] hmenu
    # @param [FFI::Pointer] lpcmi
    # @return [true, false]
    def self.SetMenuInfo(hmenu, lpcmi); end
    attach_function 'SetMenuInfo', [:hmenu, MENUINFO.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setmenuitembitmaps
    # @param [FFI::Pointer] hMenu
    # @param [Integer] uPosition
    # @param [Integer] uFlags
    # @param [FFI::Pointer] hBitmapUnchecked
    # @param [FFI::Pointer] hBitmapChecked
    # @return [true, false]
    def self.SetMenuItemBitmaps(hMenu, uPosition, uFlags, hBitmapUnchecked, hBitmapChecked); end
    attach_function 'SetMenuItemBitmaps', [:hmenu, :uint, MenuFlag, :hbitmap, :hbitmap], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setmenuiteminfoa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setmenuiteminfow
    # @param [FFI::Pointer] hMenu
    # @param [Integer] uItem
    # @param [true, false] fByPosition
    # @param [FFI::Pointer] lpmii
    # @return [true, false]
    def self.SetMenuItemInfo(hMenu, uItem, fByPosition, lpmii); end
    encoded_function 'SetMenuItemInfo', [:hmenu, :uint, :bool, MENUITEMINFO.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-trackpopupmenu
    # @param [FFI::Pointer] hMenu
    # @param [Integer] uFlags
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] nReserved
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] prcRect
    # @return [true, false]
    def self.TrackPopupMenu(hMenu, uFlags, x, y, nReserved, hWnd, prcRect); end
    attach_function 'TrackPopupMenu', [:hmenu, TrackPopupMenuFlag, :int, :int, :int, :hwnd, RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-trackpopupmenuex
    # @param [FFI::Pointer] hMenu
    # @param [Integer] uFlags
    # @param [Integer] x
    # @param [Integer] y
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] lptpm
    # @return [true, false]
    def self.TrackPopupMenuEx(hMenu, uFlags, x, y, hWnd, lptpm); end
    attach_function 'TrackPopupMenuEx', [:hmenu, TrackPopupMenuFlag, :int, :int, :hwnd, TPMPARAMS.ptr(:in)], :bool
  end
end