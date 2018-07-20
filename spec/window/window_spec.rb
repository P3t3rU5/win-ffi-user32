require_relative '../spec_helper'
require 'win-ffi/user32/function/window/window'
require 'win-ffi/user32/struct/window/window_class/wndclassex'
require 'win-ffi/user32/enum/window/message/window_message'
require 'win-ffi/user32/function/window/message'

require 'win-ffi/kernel32/function/error'
require 'win-ffi/kernel32/function/dll'

using WinFFI::StringUtils

include WinFFI

def window_proc(hwnd, msg, wparam, lparam)
  msg_name = User32::WindowMessage[msg].to_s

  LOGGER.debug("0x#{hwnd.address.to_s(16)}->#{msg_name}")
  User32.DefWindowProc(hwnd, msg, wparam, lparam)
end

def enum_child_proc(hwnd, lparam)
  text_size = User32.GetWindowTextLength(hwnd) + 1
  FFI::MemoryPointer.new(:ushort, text_size) do |value|
    User32.GetWindowText(hwnd, value, text_size)
    puts value.read_array_of_uint16(text_size - 1).pack('U*')
  end
  true
end

def enum_thread_window_proc(hwnd, lparam)
  # puts hwnd
  text_size = User32.GetWindowTextLength(hwnd) + 1
  FFI::MemoryPointer.new(:ushort, text_size) do |value|
    User32.GetWindowText(hwnd, value, text_size)
    puts value.read_array_of_uint16(text_size - 1).pack('U*')
  end
  true
end

def enum_window_proc(hwnd, lparam)
  text_size = User32.GetWindowTextLength(hwnd) + 1
  FFI::MemoryPointer.new(:ushort, text_size) do |value|
    User32.GetWindowText(hwnd, value, text_size)
    puts value.read_array_of_uint16(text_size - 1).pack('U*')
  end
  true
end

@hinstance = nil
FFI::MemoryPointer.new(:pointer) do |p|
  if Kernel32.GetModuleHandleEx(:NONE, nil, p)
    @hinstance = p.read_pointer
    @hinstance = nil if @hinstance.null?
  end
end

wc = User32::WNDCLASSEX.new('WinFFI:test').tap do |wc|
  wc.lpfnWndProc   = method(:window_proc)
  wc.cbWndExtra    = FFI::Type::Builtin::POINTER.size
  wc.hInstance     = @hinstance

  wc.hIcon         = nil # self.taskbar_icon.hicon
  wc.hIconSm       = nil # self.application_icon.hicon
  wc.hCursor       = nil # self.cursor.hcursor
  wc.hbrBackground = 0 # User32.GetSysColorBrush(User32::ColorType[:BTNFACE]) #TODO
  wc.style         = User32::WindowClassStyle[:DBLCLKS] # create_window_class_style
end

RSpec.describe 'Window' do

  subject {
    extended_style = User32::WindowStyleExtended[:APPWINDOW]
    class_name = FFI::Pointer.new(wc.atom)
    window_name = 'test'.to_w
    style = 0
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
        @hinstance,
        param
    )
  }

  describe '::AdjustWindowRect' do
    it 'Calculates the required size of the window rectangle, based on the desired client-rectangle size.' do
      expect(subject).not_to be_null
      client_rect = RECT.new
      client_rect.top    = 0
      client_rect.left   = 0
      client_rect.width  = 200
      client_rect.height = 200

      expected_rect = RECT.new
      expected_rect.top    = -26
      expected_rect.left   = -3
      expected_rect.width  = 206
      expected_rect.height = 229

      style = User32.GetWindowLong(subject, :STYLE)
      expect(User32.AdjustWindowRect(client_rect, style, false)).to be true
      expect(client_rect).to eq expected_rect
      LOGGER.debug(client_rect.to_s)
    end
  end

  describe '::AdjustWindowRectEx' do
    it 'Calculates the required size of the window rectangle, based on the desired client-rectangle size.' do
      expect(subject).not_to be_null
      client_rect = RECT.new
      client_rect.top    = 0
      client_rect.left   = 0
      client_rect.width  = 200
      client_rect.height = 200

      expected_rect = RECT.new
      expected_rect.top    = -26
      expected_rect.left   = -3
      expected_rect.width  = 206
      expected_rect.height = 229

      style = User32.GetWindowLong(subject, :STYLE)
      extended_style = User32.GetWindowLong(subject, :EXSTYLE)
      expect(User32.AdjustWindowRectEx(client_rect, style, false, extended_style)).to be true
      expect(client_rect).to eq expected_rect
      LOGGER.debug(client_rect.to_s)
    end
  end

  describe '::AllowSetForegroundWindow' do
    it 'Enables the specified process to set the foreground window using the SetForegroundWindow function.' do
      expect(User32.AllowSetForegroundWindow(Process.pid)).to be true
    end
  end

  describe '::AnimateWindow' do
    it 'Enables you to produce special effects when showing or hiding windows.' do
      expect(User32.AnimateWindow(subject, 200, User32::AW_ACTIVATE | User32::AW_HOR_NEGATIVE | User32::AW_SLIDE)).to be true
    end
  end

  describe '::AnyPopup' do
    it 'Indicates whether an owned, visible, top-level pop-up, or overlapped window exists on the screen.' do
      expect(User32.AnyPopup).to be true
    end
  end

  describe '::ArrangeIconicWindows' do
    it 'Arranges all the minimized (iconic) child windows of the specified parent window.' do
      expect(User32.ArrangeIconicWindows(subject)).to be_a Numeric
    end
  end

  describe '::BeginDeferWindowPos' do
    it 'Allocates memory for a multiple-window- position structure and returns the handle to the structure.' do
      expect(User32.BeginDeferWindowPos(3)).to be_a FFI::Pointer
    end
  end

  describe '::BringWindowToTop' do
    it 'Brings the specified window to the top of the Z order.' do
      expect(User32.BringWindowToTop(subject)).to be true
    end
  end

  describe '::CalculatePopupWindowPosition' do
    it 'Calculates an appropriate pop-up window position using the specified anchor point, pop-up window size, flags, and the optional exclude rectangle' do
      anchor_point   = POINT.new
      anchor_point.x = 800
      anchor_point.y = 800

      window_size    = SIZE.new
      window_size.cx = 100
      window_size.cy = 100

      flags = :CENTERALIGN

      exclude_rect = nil
      popup_window_position = RECT.new

      expected_rect = RECT.new
      expected_rect.left   = 750
      expected_rect.top    = 800
      expected_rect.width  = 100
      expected_rect.height = 100

      User32.CalculatePopupWindowPosition(anchor_point, window_size, flags, exclude_rect, popup_window_position)
      expect(popup_window_position.left).to   eq expected_rect.left
      expect(popup_window_position.top).to    eq expected_rect.top
      expect(popup_window_position.width).to  eq expected_rect.width
      expect(popup_window_position.height).to eq expected_rect.height
    end
  end

  describe '::CascadeWindows' do
    it 'Cascades the specified child windows of the specified parent window.' do
      expect(User32.CascadeWindows(subject, :ZORDER, nil, 0, nil)).to be_a Numeric
    end
  end

  describe '::ChangeWindowMessageFilter' do
    it 'Adds or removes a message from the User Interface Privilege Isolation (UIPI) message filter.' do
      message = User32.RegisterWindowMessage("Test")
      expect(User32.ChangeWindowMessageFilter(message, :ADD)).to be true
    end
  end

  describe '::ChangeWindowMessageFilterEx' do
    it 'Modifies the User Interface Privilege Isolation (UIPI) message filter for a specified window.' do
      message = User32.RegisterWindowMessage("Test")
      expect(User32.ChangeWindowMessageFilterEx(subject, message, :ALLOW, nil)).to be true
    end
  end

  # describe 'ChildWindowFromPoint' do
  #   it 'Determines which, if any, of the child windows belonging to a parent window contains the specified point.' do
  #     point = POINT.new
  #     point.x = 10
  #     point.y = 10
  #     LOGGER.debug User32.ChildWindowFromPoint(subject, point)
  #   end
  # end

  # describe 'ChildWindowFromPointEx' do
  #   it 'Determines which, if any, of the child windows belonging to a parent window contains the specified point.' do
  #     point = POINT.new
  #     point.x = 10
  #     point.y = 10
  #     LOGGER.debug User32.ChildWindowFromPointEx(subject, point, :ALL)
  #   end
  # end

  describe '::CloseWindow' do
    it 'Minimizes (but does not destroy) the specified window.' do
      expect(User32.CloseWindow(subject)).to be true
    end
  end

  describe '::CreateWindowEx' do
    it 'Creates a window.' do

      hinstance = nil
      FFI::MemoryPointer.new(:pointer, 1) do |p|
        if Kernel32.GetModuleHandleEx(:NONE, nil, p)
          hinstance = p.read_pointer
          hinstance = nil if hinstance.null?
        end
      end

      @wc = User32::WNDCLASSEX.new('WinFFI:test2').tap do |wc|
        wc.lpfnWndProc   = method(:window_proc)
        wc.cbWndExtra    = FFI::Type::Builtin::POINTER.size
        wc.hInstance     = hinstance

        wc.hIcon         = nil # self.taskbar_icon.hicon
        wc.hIconSm       = nil # self.application_icon.hicon
        wc.hCursor       = nil # self.cursor.hcursor
        wc.hbrBackground = 0 # User32.GetSysColorBrush(User32::ColorType[:BTNFACE]) #TODO
        wc.style         = 0 # User32::WindowClassStyle[:DBLCLKS] # create_window_class_style
      end

      extended_style = 0 # User32::WindowStyleExtended[:APPWINDOW]
      class_name = FFI::Pointer.new(@wc.atom)
      window_name = 'title'.to_w
      style = 0
      x = 0
      y = 0
      width = 200
      height = 200
      parent = nil
      menu = nil
      instance = hinstance
      param = nil
      expect(User32.CreateWindowEx(
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
          instance,
          param
      )).not_to be_null

    end
  end

  describe '::DeferWindowPos' do
    it 'Updates the specified multiple-window – position structure for the specified window.' do
      window_position_info = User32.BeginDeferWindowPos(1)
      handle = FFI::Pointer.new(-1)
      expect(User32.DeferWindowPos(
          window_position_info,
          subject,
          handle,
          0,
          0,
          300,
          300,
          :SHOWWINDOW
      )).to be_a FFI::Pointer
    end
  end

  describe '::DeregisterShellHookWindow' do
    it 'Unregisters a specified Shell window that is registered to receive Shell hook messages.' do
      expect(User32.DeregisterShellHookWindow(subject)).to be true
    end
  end

  describe '::EndDeferWindowPos' do
    it 'Simultaneously updates the position and size of one or more windows in a single screen-refreshing cycle.' do
      window_position_info = User32.BeginDeferWindowPos(1)
      handle = FFI::Pointer.new(-1)
      expect(User32.EndDeferWindowPos(
          User32.DeferWindowPos(
              window_position_info,
              subject,
              handle,
              0,
              0,
              300,
              300,
              :SHOWWINDOW
          )
      )).to be true
    end
  end

  describe '::EndTask' do
    # it 'Forcibly closes the specified window.' do
    #   LOGGER.debug User32.EndTask(subject, false, true)
    # end

    # it 'Closes the specified window with a WM_CLOSE.' do
    #   expect(User32.EndTask(subject, false, false)).to be true
    # end
  end

  describe '::EnumChildWindows' do
    it 'Enumerates the child windows that belong to the specified parent window.' do
      expect(User32.EnumChildWindows(nil, method(:enum_child_proc), 0)).to be true
    end
  end

  describe '::EnumThreadWindows' do
    it 'Enumerates all nonchild windows associated with a thread by passing the handle to each window, in turn, to an application-defined callback function. ' do
      expect(User32.EnumThreadWindows(Thread.current.object_id, method(:enum_thread_window_proc), 0)).to be true
    end
  end

  describe '::EnumWindows' do
    it 'Enumerates all top-level windows on the screen by passing the handle to each window, in turn, to an application-defined callback function.' do
      expect(User32.EnumWindows(method(:enum_window_proc), 0)).to be true
    end
  end

  describe '::FindWindow' do
    it 'Retrieves a handle to the top-level window whose class name and window name match the specified strings.' do
      expect(User32.FindWindow(nil, nil)).to be_a FFI::Pointer
    end
  end

  describe '::FindWindowEx' do
    it 'Retrieves a handle to a window whose class name and window name match the specified strings.' do
      expect(User32.FindWindowEx(nil, nil, nil, nil)).to be_a FFI::Pointer
    end
  end

  # describe '::GetAltTabInfo' do
  #   it 'Retrieves status information for the specified window if it is the application-switching (ALT+TAB) window.' do
  #     alt_tab_info = User32::ALTTABINFO.new
  #     # FindWindow(L"TaskSwitcherWnd", L"Task Switching")
  #     # expect(User32.GetAltTabInfo(User32.FindWindow('TaskSwitcherWnd'.to_w, 'Task Switching'.to_w), -1, alt_tab_info, nil, 0)).to be true
  #     User32.GetAltTabInfo(User32.FindWindow('TaskSwitcherWnd'.to_w, 'Task Switching'.to_w), -1, alt_tab_info, nil, 0)
  #     LOGGER.debug Kernel32.GetLastError
  #   end
  # end

  # describe '::FlashWindow' do
  #   it 'Flashes the specified window one time.' do
  #     LOGGER.debug User32.FlashWindow(subject, true) # its returning nil
  #   end
  # end
  #
  # describe '::FlashWindowEx' do
  #   it 'Flashes the specified window one time.' do
  #     User32.ShowWindow(subject, :SHOWNORMAL)
  #     flash_info = User32::FLASHWINFO.new
  #     LOGGER.debug subject
  #     flash_info.hwnd       = subject
  #     flash_info.dwFlags    = :ALL
  #     flash_info.uCount     = 5
  #     flash_info.dwTimeout  = 0
  #
  #     LOGGER.debug User32.FlashWindowEx(flash_info) # its returning nil
  #   end
  # end

  describe '::GetClientRect' do
    it "Retrieves the coordinates of a window's client area." do
      expect(subject).not_to be_null
      client_rect = RECT.new
      User32.GetClientRect(subject, client_rect)
      expect(client_rect.left).to eq 0
      expect(client_rect.top).to eq 0
      expect(client_rect.width).to eq 194
      expect(client_rect.height).to eq 171
    end
  end

  describe '::DestroyWindow' do
    it 'Destroys the specified window.' do
      expect(User32.DestroyWindow(subject)).to be true
    end
  end

end