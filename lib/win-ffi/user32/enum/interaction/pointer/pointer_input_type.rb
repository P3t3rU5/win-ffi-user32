require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 8
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454908(v=vs.85).aspx
      buffer = [
          :POINTER, 0x00000001,
          :TOUCH,   0x00000002,
          :PEN,     0x00000003,
          :MOUSE,   0x00000004
      ]

      if WindowsVersion >= 8.1
        buffer += [
            :TOUCHPAD, 0x00000005
        ]
      end

      POINTER_INPUT_TYPE = enum :pointer_input_type, buffer

      define_prefix(:PT, POINTER_INPUT_TYPE)
    end
  end
end