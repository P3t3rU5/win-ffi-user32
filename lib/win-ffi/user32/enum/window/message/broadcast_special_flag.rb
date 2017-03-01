require 'win-ffi/user32'

module WinFFI
  module User32
    # Broadcast Special Message Flags
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644932(v=vs.85).aspx
    buffer = [
        :QUERY,              0x00000001,
        :IGNORECURRENTTASK,  0x00000002,
        :FLUSHDISK,          0x00000004,
        :NOHANG,             0x00000008,
        :FORCEIFHUNG,        0x00000020,
        :NOTIMEOUTIFNOTHUNG, 0x00000040,
        :POSTMESSAGE,        0x00000010,
        :ALLOWSFW,           0x00000080,
        :SENDNOTIFYMESSAGE,  0x00000100,
    ]

    if WINDOWS_VERSION >= :xp
      buffer += [
          :RETURNHDESK, 0x00000200,
          :LUID,        0x00000400
      ]
    end

    BroadcastSpecialFlag = enum :broadcast_special_flag, buffer

    define_prefix(:BSF, BroadcastSpecialFlag)
  end
end