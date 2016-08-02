require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms684245(v=vs.85).aspx
    MsgWaitForMultipleObjectsFlag = enum :msg_wait_for_multiple_objects_flag, [
        :WAITANY,        0x0000,
        :WAITALL,        0x0001,
        :ALERTABLE,      0x0002,
        :INPUTAVAILABLE, 0x0004,
    ]

    define_prefix(:MWMO, MsgWaitForMultipleObjectsFlag)
  end
end