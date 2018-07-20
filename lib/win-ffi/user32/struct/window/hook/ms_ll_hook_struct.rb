require 'win-ffi/core/struct/point'

require_relative '../../../enum/interaction/mouse/xbutton'
require_relative '../../../enum/window/hook/low_level_mouse_hook_flag'

module WinFFI
  module User32
    # Structure used by WH_MOUSE_LL
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644970
    class MSLLHOOKSTRUCT < FFIAdditions::Struct
      def pt; end
      def pt=(v); end
      def mouseData; end
      def mouseData=(v); end
      def flags; end
      def flags=(v); end
      def time; end
      def time=(v); end
      def dwExtraInfo; end
      def dwExtraInfo=(v); end

      layout pt:          POINT,
             mouseData:   XButton,
             flags:       LowLevelMouseHookFlag,
             time:        :dword,
             dwExtraInfo: :ulong
    end
  end
end
