module WinFFI
  if WINDOWS_VERSION >= 8
    require_relative '../../../enum/interaction/input/message_device_type'
    require_relative '../../../enum/interaction/input/message_origin_id'

    module User32
      # Input source structure.
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-input_message_source
      class INPUT_MESSAGE_SOURCE < FFIAdditions::Struct
        attr_accessor :deviceType, :originId

        layout deviceType: INPUT_MESSAGE_DEVICE_TYPE,
               originId:   INPUT_MESSAGE_ORIGIN_ID
      end
    end
  end
end