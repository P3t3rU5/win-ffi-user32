module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454908
      buffer = [
          :POINTER, 0x00000001,
          :TOUCH,   0x00000002,
          :PEN,     0x00000003,
          :MOUSE,   0x00000004
      ]

      buffer += [:TOUCHPAD, 0x00000005] if WINDOWS_VERSION >= 8.1

      POINTER_INPUT_TYPE = enum :pointer_input_type, buffer

      define_prefix(:PT, POINTER_INPUT_TYPE)
    end
  end
end