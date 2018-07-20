module WinFFI
  module User32
    # SendMessageTimeout values
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644952
    buffer =  [
        :ABORTIFHUNG,        0x0002,
        :BLOCK,              0x0001,
        :NORMAL,             0x0000,
        :NOTIMEOUTIFNOTHUNG, 0x0008,
    ]

    buffer += [:ERRORONEXIT, 0x0020] if WINDOWS_VERSION >= :vista

    SendMessageTimeoutFlag = enum :send_message_timeout_flag, buffer

    define_prefix(:SMTO, SendMessageTimeoutFlag)
  end
end