require 'win-ffi/core/struct/point'
require 'win-ffi/core/struct/rect'

require_relative '../../../enum/window/placement_flag'
require_relative '../../../enum/window/function/show_window_flag'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632611
    class WINDOWPLACEMENT < FFIAdditions::Struct
      def length; end
      def length=(v) end
      def flags; end
      def flags=(v) end
      def showCmd; end
      def showCmd=(v) end
      def ptMinPosition; end
      def ptMinPosition=(v) end
      def ptMaxPosition; end
      def ptMaxPosition=(v) end
      def rcNormalPosition; end
      def rcNormalPosition=(v) end

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
