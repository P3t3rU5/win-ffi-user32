module WinFFI
  module User32
    # Broadcast Special Message Recipient list
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644932
    BroadcastSpecialMessageFlag = enum :broadcast_special_message_flag, [
        :ALLCOMPONENTS,      0x00000000,
        :VXDS,               0x00000001,
        :NETDRIVER,          0x00000002,
        :INSTALLABLEDRIVERS, 0x00000004,
        :APPLICATIONS,       0x00000008,
        :ALLDESKTOPS,        0x00000010
    ]

    define_prefix(:BSM, BroadcastSpecialMessageFlag)
  end
end