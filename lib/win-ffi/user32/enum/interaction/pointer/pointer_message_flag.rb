module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # https://docs.microsoft.com/en-us/previous-versions/windows/desktop/inputmsg/pointer-message-flags
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