require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/jj653869(v=vs.85).aspx
      PointerMessageFlag = enum :pointer_message_flag, [
          :NEW,           0x00000001,
          :INRANGE,       0x00000002,
          :INCONTACT,     0x00000004,
          :FIRSTBUTTON,   0x00000010,
          :SECONDBUTTON,  0x00000020,
          :THIRDBUTTON,   0x00000040,
          :FOURTHBUTTON,  0x00000080,
          :FIFTHBUTTON,   0x00000100,
          :PRIMARY,       0x00002000,
          :CONFIDENCE,   0x000004000,
          :CANCELED,     0x000008000,
      ]

      define_prefix(:POINTER_MESSAGE_FLAG, PointerMessageFlag)
    end
  end
end