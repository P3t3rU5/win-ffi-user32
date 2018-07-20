module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-msgwaitformultipleobjectsex
    MsgWaitForMultipleObjectsFlag = enum :msg_wait_for_multiple_objects_flag, [
        :WAITANY,        0x0000,
        :WAITALL,        0x0001,
        :ALERTABLE,      0x0002,
        :INPUTAVAILABLE, 0x0004,
    ]

    define_prefix(:MWMO, MsgWaitForMultipleObjectsFlag)
  end
end