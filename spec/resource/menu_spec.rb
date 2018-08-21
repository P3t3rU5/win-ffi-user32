require 'rspec'
require_relative '../spec_helper'

require 'win-ffi/user32/function/resource/menu'
require 'win-ffi/user32/function/interaction/keyboard'
require 'win-ffi/user32/function/window'

include WinFFI
include WinFFI::User32
include WinFFI::Kernel32

using WinFFI::StringUtils

def get_system_menu
  User32.GetSystemMenu(@hwnd, false)
end

def window_proc(hwnd, msg, wparam, lparam)
  msg_name = User32::WindowMessage[msg]

  LOGGER.debug("0x#{hwnd.address.to_s(16)}->#{msg_name}")
  User32.DefWindowProc(hwnd, msg, wparam, lparam)
end

RSpec.describe 'Menu' do

  before(:all) do
    hinstance = nil
      FFI::MemoryPointer.new(:pointer) do |p|
        if Kernel32.GetModuleHandleEx(:NONE, nil, p)
          hinstance = p.read_pointer
          hinstance = nil if hinstance.null?
        end
      end

    wc = User32::WNDCLASSEX.new('WinFFI:test').tap do |wc|
      wc.lpfnWndProc   = method(:window_proc)
      wc.cbWndExtra    = FFI::Type::Builtin::POINTER.size
      wc.hInstance     = hinstance

      wc.hIcon         = nil # self.taskbar_icon.hicon
      wc.hIconSm       = nil # self.application_icon.hicon
      wc.hCursor       = nil # self.cursor.hcursor
      wc.hbrBackground = 0 # User32.GetSysColorBrush(User32::ColorType[:BTNFACE]) #TODO
      wc.style         = User32::WindowClassStyle[:DBLCLKS] # create_window_class_style
    end

    extended_style = User32::WindowStyleExtended[:OVERLAPPEDWINDOW]
    class_name = FFI::Pointer.new(wc.atom)
    window_name = 'test'.to_w
    style = User32::WindowStyle[:SYSMENU]
    x = 0
    y = 0
    width = 200
    height = 200
    parent = nil
    menu = nil
    param = nil
    @hwnd = User32.CreateWindowEx(
        extended_style,
        class_name,
        window_name,
        style,
        x,
        y,
        width,
        height,
        parent,
        menu,
        hinstance,
        param
    )
  end

  let(:test) { "test".to_w }

  describe '::AppendMenu' do
    it 'Appends a new item to the end of the specified menu' do
      expect(User32.AppendMenu(get_system_menu, 0, 10, test)).to be true
    end
  end

  describe '::CheckMenuItem' do
    it "Sets the state of the specified menu item's check-mark attribute to either selected or clear." do
      User32.AppendMenu(get_system_menu, :CHECKED, 11, test)

      expect(MenuFlag[User32.CheckMenuItem(get_system_menu, 11, :UNCHECKED)]).to be_a Symbol
    end

    it 'fails' do
      expect(User32.CheckMenuItem(get_system_menu, 12, :UNCHECKED)).to eq 0xffffffff
    end
  end

  describe '::CheckMenuRadioItem' do
    it "Sets the state of the specified menu item's check-mark attribute to either selected or clear." do
      User32.AppendMenu(get_system_menu, :CHECKED,   12, test)
      User32.AppendMenu(get_system_menu, :UNCHECKED, 13, test)
      User32.AppendMenu(get_system_menu, :UNCHECKED, 14, test)
      expect(User32.CheckMenuRadioItem(get_system_menu, 12, 14, 14, :BYCOMMAND)).to be true
    end
  end

  describe '::CreateMenu' do
    it 'CreateMenu' do
      hmenu = User32.CreateMenu
      expect(hmenu).to be_a FFI::Pointer
      User32.DestroyMenu(hmenu)
    end
  end

  describe '::CreatePopupMenu' do
    it 'CreatePopupMenu' do
      hmenu = User32.CreatePopupMenu
      expect(hmenu).to be_a FFI::Pointer
      User32.DestroyMenu(hmenu)
    end
  end

  describe '::DeleteMenu' do
    it 'Deletes an item from the specified menu.' do
      User32.AppendMenu(get_system_menu, :CHECKED, 15, test)

      expect(User32.DeleteMenu(get_system_menu, 15, :BYCOMMAND)).to be true
    end
  end

  describe '::DestroyMenu' do
    it 'Destroys the specified menu and frees any memory that the menu occupies' do
      expect(User32.DestroyMenu(User32.CreateMenu)).to be true
    end
  end

  describe '::DrawMenuBar' do
    it 'Redraws the menu bar of the specified window.' do
      expect(User32.DrawMenuBar(@hwnd)).to be true
    end
  end

  describe '::EnableMenuItem' do
    it 'Enables the specified menu item' do
      User32.AppendMenu(get_system_menu, :DISABLED, 16, test)
      expect(User32.EnableMenuItem(get_system_menu, 16, :ENABLED)).to be true
    end

    it 'Disables the specified menu item' do
      User32.AppendMenu(get_system_menu, :ENABLED, 17, test)
      expect(User32.EnableMenuItem(get_system_menu, 17, :DISABLED)).to be true
    end

    it 'Grays the specified menu item' do
      User32.AppendMenu(get_system_menu, 0, 18, test)
      expect(User32.EnableMenuItem(get_system_menu, 18, :GRAYED)).to be true
    end
  end

  describe '::EndMenu' do
    it "Ends the calling thread's active menu." do
      expect(User32.EndMenu).to be true
    end
  end

  describe '::GetMenu' do
    it 'Retrieves a handle to the menu assigned to the specified window' do
      expect(User32.GetMenu(@hwnd)).to be_a FFI::Pointer
    end
  end

  describe '::GetMenuBarInfo' do
    it 'Retrieves information about the specified menu bar' do
      menu_bar_info = MENUBARINFO.new
      expect(User32.GetMenuBarInfo(@hwnd, -1, 0, menu_bar_info)).to be true
    end
  end

  describe '::GetMenuCheckMarkDimensions' do
    it 'Retrieves the dimensions of the default check-mark bitmap' do
      expect(User32.GetMenuCheckMarkDimensions).to be_a Numeric
    end
  end

  describe '::GetMenuDefaultItem' do
    it 'Determines the default menu item on the specified menu.' do
      expect(User32.GetMenuDefaultItem(get_system_menu, 1, 0)).not_to eq -1
    end
  end

  describe '::GetMenuInfo' do
    it 'Retrieves information about a specified menu.' do
      menu_info = MENUINFO.new
      expect(User32.GetMenuInfo(get_system_menu, menu_info)).to be true
    end
  end

  describe '::GetMenuItemCount' do
    it 'Determines the number of items in the specified menu' do
      expect(User32.GetMenuItemCount(get_system_menu)).not_to eq -1
    end
  end

  describe '::GetMenuItemID' do
    it 'Retrieves the menu item identifier of a menu item located at the specified position in a menu' do
      expect(User32.GetMenuItemID(get_system_menu, 10)).to be_a Numeric
    end
  end

  describe '::GetMenuItemInfo' do
    it 'Retrieves information about a menu item' do
      menu_item_info = MENUITEMINFO.new
      expect(User32.GetMenuItemInfo(get_system_menu, 10, true, menu_item_info)).to be true
    end
  end

  describe '::GetMenuItemRect' do
    it 'Retrieves the bounding rectangle for the specified menu item' do
      rect = RECT.new
      expect(User32.GetMenuItemRect(@hwnd, get_system_menu, 10, rect)).to be true
    end
  end

  describe '::GetMenuState' do # GetMenuInfo
    it 'Retrieves the menu flags associated with the specified menu item' do
      expect(MenuFlag[User32.GetMenuState(get_system_menu, 10, :BYCOMMAND)]).to be_a Symbol
    end
  end

  describe '::GetMenuString' do # GetMenuInfo
    it 'Copies the text string of the specified menu item into the specified buffer' do
      length = User32.GetMenuString(get_system_menu, 10, nil, 0, 0)
      expect(length).to eq 4
      buffer = FFI::MemoryPointer.new(:uint16, length + 1)
      expect(User32.GetMenuString(get_system_menu, 10, buffer, length + 1, 0)).to eq 4
      text = String.from_pointer(buffer, length + 1)
      expect(text).to eq 'test'
    end
  end

  describe '::GetSubMenu' do
    it 'Retrieves a handle to the drop-down menu or submenu activated by the specified menu item' do
      hmenu = User32.CreateMenu
      User32.AppendMenu(hmenu, :STRING, 0, test)
      User32.AppendMenu(get_system_menu, :POPUP, hmenu.address, test)
      expect(User32.GetSubMenu(get_system_menu, 16)).to be_a FFI::Pointer
    end
  end

  describe '::GetSystemMenu' do
    it 'Enables the application to access the window menu (also known as the system menu or the control menu) for copying and modifying' do
      puts @hwnd
      expect(User32.GetSystemMenu(@hwnd, false)).not_to be_null
    end
  end

  describe '::HiliteMenuItem' do
    it 'Adds or removes highlighting from an item in a menu bar' do
      # User32.HiliteMenuItem(@hwnd, get_system_menu, 15, :HILITE)
      # expect().to be true
      # TODO
    end
  end

  describe '::InsertMenu' do
    it 'nserts a new menu item into a menu, moving other items down the menu' do
      expect(User32.InsertMenu(get_system_menu, 17, :BYCOMMAND, 0, test)).to be true
    end
  end

  describe '::InsertMenuItem' do
    it 'nserts a new menu item into a menu, moving other items down the menu' do
      menu_item_info = MENUITEMINFO.new
      menu_item_info.fMask = :STRING
      menu_item_info.dwTypeData = test
      menu_item_info.cch = test.length

     expect(User32.InsertMenuItem(get_system_menu, 18, false, menu_item_info)).to be true
    end
  end

  describe '::IsMenu' do
    it 'Determines whether a handle is a menu handle' do
      expect(User32.IsMenu(get_system_menu)).to be true
    end
  end

  describe 'LoadMenu' do
    it 'Loads the specified menu resource from the executable (.exe) file associated with an application instance' do
      # TODO
    end
  end

  describe 'LoadMenuIndirect' do
    it '' do

    end
  end

  describe 'MenuItemFromPoint' do
    it 'Determines which menu item, if any, is at the specified location' do
      # point = POINT.new
      # point.x = 0
      # point.y = 0
      # pos = User32.MenuItemFromPoint(@hwnd, get_system_menu, point)
      # LOGGER.info pos
      # expect(pos).to be_a Numeric
      # TODO
    end
  end

  describe '::ModifyMenu' do
    it 'Changes an existing menu item. This function is used to specify the content, appearance, and behavior of the menu item' do
      expect(User32.ModifyMenu(get_system_menu, 10, :BYCOMMAND, 10, test)).to be true
    end
  end

  describe '::RemoveMenu' do
    it 'Deletes a menu item or detaches a submenu from the specified menu.' do
      expect(User32.RemoveMenu(get_system_menu, 10, :BYCOMMAND)).to be true
    end
  end

  describe '::SetMenu' do
    it 'Assigns a new menu to the specified window' do
      # hmenu = User32.CreateMenu
      # expect(User32.SetMenu(@hwnd, hmenu)).to be true
      # TODO
    end
  end

  describe '::SetMenuDefaultItem' do
    it 'Sets the default menu item for the specified menu' do
      expect(User32.SetMenuDefaultItem(get_system_menu, 11, 0)).to be true
    end
  end

  describe '::SetMenuInfo' do
    it 'Sets information for a specified menu' do
      menu_info = MENUINFO.new
      expect(User32.SetMenuInfo(get_system_menu, menu_info)).to be true
    end
  end

  describe '::SetMenuItemBitmaps' do
    it 'Associates the specified bitmap with a menu item' do
      expect(User32.SetMenuItemBitmaps(get_system_menu, 11, :BYCOMMAND, nil, nil)).to be true
    end
  end

  describe '::SetMenuItemInfo' do
    it 'Changes information about a menu item' do
      menu_item_info = MENUITEMINFO.new
      menu_item_info.fMask = :STRING
      menu_item_info.dwTypeData = test
      menu_item_info.cch = 5

      expect(User32.SetMenuItemInfo(get_system_menu, 11, false, menu_item_info)).to be true
    end
  end

  describe 'TrackPopupMenu' do
    it 'Displays a shortcut menu at the specified location and tracks the selection of items on the menu' do
      # hmenu = User32.CreatePopupMenu
      # expect(User32.TrackPopupMenu(hmenu, :LEFTALIGN, 10, 10, 0, @hwnd, nil))
      # TODO
    end
  end

  describe 'TrackPopupMenuEx' do
    it 'Displays a shortcut menu at the specified location and tracks the selection of items on the shortcut menu' do
      # hmenu = User32.CreatePopupMenu
      # tpm_params = TPMPARAMS.new
      # tpm_params.rcExclude = RECT.new.tap do |rect|
      #   rect.left   =  10
      #   rect.top    =  10
      #   rect.right  = 100
      #   rect.bottom = 100
      # end
      # expect(User32.TrackPopupMenuEx(hmenu, :LEFTALIGN, 0, 0, @hwnd, tpm_params)).to be true
      # TODO
    end
  end
end