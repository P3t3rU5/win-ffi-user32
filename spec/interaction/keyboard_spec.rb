 require_relative '../spec_helper'

require 'win-ffi/user32/function/interaction/keyboard'
require 'win-ffi/core/macro/util'

include WinFFI
include WinFFI::User32

RSpec.describe 'Keyboard' do
  describe '::GetKeyState' do
    it 'checks if the button is being pressed' do
      expect((GetKeyState(VirtualKeyCode[:SHIFT]) & 0x8000) != 0).to be false
      expect((GetKeyState(VirtualKeyCode[:CONTROL]) & 0x8000) != 0).to be false
      expect((GetKeyState(VirtualKeyCode[:MENU]) & 0x8000) != 0).to be false
    end
  end

  describe '::BlockInput' do
    it 'should block input' do
      expect(BlockInput(true)).to be false
    end

    it 'should unblock input' do
      expect(BlockInput(false)).to be false
    end
  end

  describe '::GetActiveWindow' do
    it 'returns the active window' do
      expect(User32.GetActiveWindow).to eq FFI::Pointer::NULL
    end
  end

  describe '::GetFocus' do
    it 'returns the active window' do
      expect(User32.GetFocus).to eq FFI::Pointer::NULL
    end
  end

  describe '::GetKBCodePage' do
    it 'Retrieves the current code page' do
      expect(User32.GetKBCodePage).to be_a Numeric
    end
  end

  describe '::GetKeyboardLayout' do
    it 'Retrieves the active input locale identifier' do
      kl = User32.GetKeyboardLayout(0).address
      language_id = WinFFI.LOWORD(kl)
      device_handle = WinFFI.HIWORD(kl)
      expect(language_id).to be_a Numeric
      expect(device_handle).to be_a Numeric
      primary = language_id & 0x03FF
      secondary = language_id >> 10
      expect(primary).to be_a Numeric
      expect(secondary).to be_a Numeric
    end
  end

  describe '::GetKeyboardLayoutList' do
    it 'Retrieves the input locale identifiers' do
      size = User32.GetKeyboardLayoutList(0, nil)
      expect(size).to be_a Numeric
      FFI::MemoryPointer.new(User32.find_type(:hkl), size) do  |list|
        User32.GetKeyboardLayoutList(size, list)
        size.times do |i|
          expect(list[i]).to be_a FFI::Pointer
        end
      end
    end
  end

  # describe '::GetKeyboardLayoutName' do
  #   it 'Retrieves the name of the active input locale identifier' do
  #     FFI::MemoryPointer.new(:char, 9) do |name|
  #       LOGGER.debug(name.read_array_of_char(9).pack('U*')) if User32.GetKeyboardLayoutName(name)
  #     end
  #   end
  # end

  describe '::GetKeyboardState' do
    it 'Copies the status of the 256 virtual keys to the specified buffer.' do
      FFI::MemoryPointer.new(:uchar, 256) do |keyboard|
        expect(User32.GetKeyboardState(keyboard)).to be true
      end
    end
  end

  describe '::GetKeyboardType' do
    it 'Retrieves information about the current keyboard.' do
      type = User32.GetKeyboardType(:TYPE)
      expect(type).to be_a Numeric # keyboard type
      expect(type).not_to eq 0
      expect(User32.GetKeyboardType(:SUBTYPE)).to be_a Numeric # keyboard subtype
      expect(User32.GetKeyboardType(:FUNCTION_KEYS)).to be_a Numeric # function keys
    end
  end

  describe '::GetKeyState' do
    it 'Retrieves the status of the specified virtual key.' do
      result = User32.GetKeyState(:SPACE)
      expect(WinFFI.HIWORD(result)).to eq 0
      expect(WinFFI.LOWORD(result)).to eq 0
    end
  end

  describe '::GetKeyNameText' do
    it 'Retrieves a string that represents the name of a key.' do
      VirtualKeyCode.symbols.each do |key|
        FFI::MemoryPointer.new(:char, 255) do |name|
          key = User32.MapVirtualKey(key, :VK_TO_VSC)
          length = User32.GetKeyNameText((key << 16), name, 255)
          expect(name.read_array_of_uchar(length * 2).pack('U*')).to be_a String
        end
      end
    end
  end

  describe '::GetLastInputInfo' do
    it 'Retrieves the time of the last input event.' do
      last_input_info = LASTINPUTINFO.new
      expect(User32.GetLastInputInfo(last_input_info)).to be true
      expect(last_input_info.cbSize).to eq 8
      expect(last_input_info.dwTime).to be_a Numeric
    end
  end

  describe '::keybd_event' do
    it 'Synthesizes a keystroke.' do
      expect {User32.keybd_event(:SPACE, 0, :EXTENDEDKEY, 0)}.not_to raise_error
      expect {User32.keybd_event(:SPACE, 0, :KEYUP, 0)}.not_to raise_error
    end
  end

  # describe '::LoadKeyboardLayout' do
  #   it 'Loads a new input locale identifier into the system.' do
  #     User32.LoadKeyboardLayout()
  #   end
  # end

  describe '::MapVirtualKey' do
    it 'Maps a virtual-key code into a scan code or character value' do
      expect(User32.MapVirtualKey(:SPACE, :VK_TO_VSC)).to be_a Numeric
    end
  end

  describe '::MapVirtualKeyEx' do
    it 'The function translates the codes using the input language and an input locale identifier.' do
      expect(User32.MapVirtualKeyEx(:SPACE, :VK_TO_VSC, User32.GetKeyboardLayout(0))).to be_a Numeric
    end
  end

  describe '::OemKeyScan' do
    it 'Maps OEMASCII codes 0 through 0x0FF into the OEM scan codes and shift states' do
      expect(User32.OemKeyScan(32)).to be_a Numeric
    end
  end

  describe '::RegisterHotKey' do
    it 'Defines a system-wide hot key.' do
      expect(User32.RegisterHotKey(nil, 0 , :CONTROL, :O)).to be true
    end
  end

  describe '::SendInput' do
    it 'Synthesizes keystrokes, mouse motions, and button clicks.' do
      keyboard = INPUT.new
      keyboard.type = InputType[:KEYBOARD]
      keyboard.u.ki = KEYBDINPUT.new
      keyboard.u.ki.wVk = VirtualKeyCode[:SPACE]
      keyboard.u.ki.wScan = 0
      keyboard.u.ki.dwFlags = KeyboardEventFlag[:EXTENDEDKEY]
      keyboard.u.ki.time = 0
      mouse = INPUT.new
      mouse.type = InputType[:MOUSE]
      mouse.u.mi = MOUSEINPUT.new
      mouse.u.mi.dx = 1
      mouse.u.mi.dy = 1
      mouse.u.mi.dwFlags =  MouseEventFlag[:LEFTDOWN]
      mouse.u.mi.time = 0
      FFI::MemoryPointer.new(:pointer, 2) do |input|
        input.write_array_of_pointer([keyboard, mouse])
        expect(User32.SendInput(2, input, keyboard.size)).to eq 2
      end
    end
  end

  # describe '::SetActiveWindow' do
  #   it 'Activates a window.' do
  #     User32.SetActiveWindow()
  #   end
  # end

  # describe '::SetFocus' do
  #   it 'Sets the keyboard focus to the specified window.' do
  #     User32.SetFocus
  #   end
  # end

  describe '::SetKeyboardState' do
    it '' do
      FFI::MemoryPointer.new(:uchar, 256) do |key_state|
        expect(User32.SetKeyboardState(key_state)).to be true
      end
    end
  end

  describe '::ToAscii' do
    it 'Translates the specified virtual-key code and keyboard state to the corresponding character or characters' do
      FFI::MemoryPointer.new(:uchar, 256) do |key_state|
        FFI::MemoryPointer.new(:char) do |char|
          User32.ToAscii(VirtualKeyCode[:SPACE], 0, key_state, char, 0)
          expect(char.read_char).to eq 32
        end
      end
    end
  end

  describe '::ToAsciiEx' do
    it 'Translates the specified virtual-key code and keyboard state to the corresponding character or characters' do
      FFI::MemoryPointer.new(:uchar, 256) do |key_state|
        FFI::MemoryPointer.new(:char) do |char|
          User32.ToAsciiEx(VirtualKeyCode[:SPACE], 0, key_state, char, 0, User32.GetKeyboardLayout(0))
          expect(char.read_char).to eq 32
        end
      end
    end
  end

  describe '::ToUnicode' do
    it 'Translates the specified virtual-key code and keyboard state to the corresponding Unicode character or characters.' do
      FFI::MemoryPointer.new(:uchar, 256) do |key_state|
        FFI::MemoryPointer.new(:string) do |string|
          User32.ToUnicode(VirtualKeyCode[:A], 0, key_state, string, 1, 0)
          expect(string.read_array_of_uint16(1).pack('U*')).to eq 'a'
        end
      end
    end
  end

  describe '::ToUnicodeEx' do
    it 'Translates the specified virtual-key code and keyboard state to the corresponding Unicode character or characters.' do
      FFI::MemoryPointer.new(:uchar, 256) do |key_state|
        FFI::MemoryPointer.new(:string) do |string|
          User32.ToUnicodeEx(VirtualKeyCode[:A], 0, key_state, string, 1, 0, User32.GetKeyboardLayout(0) )
          expect(string.read_array_of_uint16(1).pack('U*')).to eq 'a'
        end
      end
    end
  end

  describe '::UnregisterHotKey' do
    it 'Defines a system-wide hot key.' do
      expect(User32.UnregisterHotKey(nil, 0)).to be true
    end
  end

  describe '::VkKeyScan' do
    it 'Translates a character to the corresponding virtual-key code and shift state for the current keyboard.' do
      expect(User32.VkKeyScan(97)).to be_a Numeric
    end
  end

  describe '::VkKeyScanEx' do
    it 'Translates a character to the corresponding virtual-key code and shift state for the current keyboard.' do
      expect(User32.VkKeyScanEx(97, User32.GetKeyboardLayout(0))).to be_a Numeric
    end
  end
end