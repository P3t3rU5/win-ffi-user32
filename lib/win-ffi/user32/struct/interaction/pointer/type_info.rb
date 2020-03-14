require_relative '../../../enum/interaction/pointer/input_type'

require_relative 'touch_info'
require_relative 'pen_info'

module WinFFI
  module User32

    class PTI_UNION < FFIAdditions::Union
      attr_accessor :touchInfo, :penInfo

      layout touchInfo: POINTER_TOUCH_INFO,
             penInfo:   POINTER_PEN_INFO
    end

    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-pointer_type_info
    class POINTER_TYPE_INFO < FFIAdditions::Struct
      attr_accessor :type, :u

      layout type: POINTER_INPUT_TYPE,
             u:    PTI_UNION
    end
  end
end