require_relative '../../../enum/interaction/keyboard/virtual_key_code'

module WinFFI
  module User32
    # Structure used by WH_KEYBOARD_LL
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644967
    class KBDLLHOOKSTRUCT < FFIAdditions::Struct
      def vkCode; end
      def vkCode=(v); end
      def scanCode; end
      def scanCode=(v); end
      def flags; end
      def flags=(v); end
      def time; end
      def time=(v); end
      def dwExtraInfo; end
      def dwExtraInfo=(v); end

      layout vkCode:      VirtualKeyCode,
             scanCode:    :dword,
             flags:       :dword,
             time:        :dword,
             dwExtraInfo: :ulong
    end
  end
end
