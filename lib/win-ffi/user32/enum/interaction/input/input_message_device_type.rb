require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # Identifiers for message input source device type.
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh448795(v=vs.85).aspx
      buffer = [
          :UNAVAILABLE, 0x00000000,      # not specified
          :KEYBOARD,    0x00000001,      # from keyboard
          :MOUSE,       0x00000002,      # from mouse
          :TOUCH,       0x00000004,      # from touch
          :PEN,         0x00000008,      # from pen
      ]

      if WINDOWS_VERSION >= 8.1
        buffer += [
            :TOUCHPAD, 0x00000010, # from touchpad
        ]
      end

      INPUT_MESSAGE_DEVICE_TYPE = enum :input_message_device_type, buffer

      define_prefix(:IMDT, INPUT_MESSAGE_DEVICE_TYPE)
    end
  end
end
