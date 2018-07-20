module WinFFI
  module User32
    # InSendMessageEx return value
    # https://msdn.microsoft.com/en-us/library/ms644942
    InSendMessageExReturn = enum :in_send_message_ex_return, [
        :NOSEND,   0x00000000,
        :SEND,     0x00000001,
        :NOTIFY,   0x00000002,
        :CALLBACK, 0x00000004,
        :REPLIED,  0x00000008
    ]

    define_prefix(:ISMEX, InSendMessageExReturn)
  end
end