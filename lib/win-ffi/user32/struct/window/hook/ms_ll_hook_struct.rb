require 'win-ffi/core/struct/point'

require_relative '../../../enum/interaction/mouse/xbutton'
require_relative '../../../enum/window/hook/low_level_mouse_hook_flag'

module WinFFI
  module User32
    # Structure used by WH_MOUSE_LL
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-msllhookstruct
    class MSLLHOOKSTRUCT < FFIAdditions::Struct
      attr_accessor :pt, :mouseData, :flags, :time, :dwExtraInfo

      layout pt:          POINT,
             mouseData:   XButton,
             flags:       LowLevelMouseHookFlag,
             time:        :dword,
             dwExtraInfo: :ulong
    end
  end
end
