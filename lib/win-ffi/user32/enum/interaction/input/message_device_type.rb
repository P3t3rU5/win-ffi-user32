module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # Identifiers for message input source device type.
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh448795
      buffer = [
          :UNAVAILABLE, 0x00000000,
          :KEYBOARD,    0x00000001,
          :MOUSE,       0x00000002,
          :TOUCH,       0x00000004,
          :PEN,         0x00000008
      ]

      buffer += [:TOUCHPAD, 0x00000010] if WINDOWS_VERSION >= 8.1

      INPUT_MESSAGE_DEVICE_TYPE = enum :input_message_device_type, buffer

      define_prefix(:IMDT, INPUT_MESSAGE_DEVICE_TYPE)
    end
  end
end
