require 'win-ffi/core/struct/point'
require 'win-ffi/core/struct/rect'

require_relative '../../../enum/window/placement_flag'
require_relative '../../../enum/window/function/show_window_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-windowplacement
    class WINDOWPLACEMENT < FFIAdditions::Struct
      attr_accessor :length,
                    :flags,
                    :showCmd,
                    :ptMinPosition,
                    :ptMaxPosition,
                    :rcNormalPosition

      layout length:           :uint,
             flags:            WindowPlacementFlag,
             showCmd:          :uint,
             ptMinPosition:    POINT,
             ptMaxPosition:    POINT,
             rcNormalPosition: RECT

      def initialize
        super
        self.length = self.size
      end

      def showCmd
        User32.ShowWindowFlag[self[:showCmd]]
      end

      def showCmd=(v)
        self.showCmd = v.is_a?(Integer) ? v : User32::ShowWindowFlag[v]
      end

      def to_s
        "showCmd = #{showCmd}, min = #{ptMinPosition}, max = #{ptMaxPosition}, normal = #{rcNormalPosition}"
      end
    end
  end
end
