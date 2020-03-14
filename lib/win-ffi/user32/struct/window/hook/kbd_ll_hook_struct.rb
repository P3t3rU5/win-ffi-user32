require_relative '../../../enum/interaction/keyboard/virtual_key_code'

module WinFFI
  module User32
    # Structure used by WH_KEYBOARD_LL
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-kbdllhookstruct
    class KBDLLHOOKSTRUCT < FFIAdditions::Struct
      attr_accessor :vkCode, :scanCode, :flags, :time, :dwExtraInfo

      layout vkCode:      VirtualKeyCode,
             scanCode:    :dword,
             flags:       :dword,
             time:        :dword,
             dwExtraInfo: :ulong
    end
  end
end
