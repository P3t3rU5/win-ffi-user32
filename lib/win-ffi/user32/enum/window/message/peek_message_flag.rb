require_relative 'queue_status_flag'

module WinFFI
  module User32
    # PeekMessage() Options
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644943
    PeekMessageFlag = enum :peek_message_flag, [
      :NOREMOVE, 0x0000,
      :REMOVE,   0x0001,
      :NOYIELD,  0x0002,

      :QS_INPUT,       QS_INPUT << 16,
      :QS_POSTMESSAGE, (QS_POSTMESSAGE | QS_HOTKEY | QS_TIMER) << 16,
      :QS_PAINT,       QS_PAINT << 16,
      :QS_SENDMESSAGE, QS_SENDMESSAGE << 16
    ]

    define_prefix(:PM, PeekMessageFlag)
  end
end