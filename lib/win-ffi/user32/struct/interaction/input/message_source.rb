module WinFFI
  if WINDOWS_VERSION >= 8
    require_relative '../../../enum/interaction/input/message_device_type'
    require_relative '../../../enum/interaction/input/message_origin_id'

    module User32
      # Input source structure.
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh448799
      class INPUT_MESSAGE_SOURCE < FFIAdditions::Struct
        def deviceType; end
        def deviceType=(v); end
        def originId; end
        def originId=(v); end

        layout deviceType: INPUT_MESSAGE_DEVICE_TYPE,
               originId:   INPUT_MESSAGE_ORIGIN_ID
      end
    end
  end
end