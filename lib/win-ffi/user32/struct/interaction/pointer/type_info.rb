require_relative '../../../enum/interaction/pointer/input_type'

require_relative 'touch_info'
require_relative 'pen_info'

module WinFFI
  module User32

    class PTI_UNION < FFIAdditions::Union
      def touchInfo; end
      def touchInfo=(v) end
      def penInfo; end
      def penInfo=(v) end

      layout touchInfo: POINTER_TOUCH_INFO,
             penInfo:   POINTER_PEN_INFO
    end

    class POINTER_TYPE_INFO < FFIAdditions::Struct
      def type; end
      def type=(v) end
      def u; end
      def u=(v) end

      layout type: POINTER_INPUT_TYPE,
             u:    PTI_UNION
    end
  end
end