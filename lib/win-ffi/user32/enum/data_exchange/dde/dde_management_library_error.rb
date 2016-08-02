require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648755(v=vs.85).aspx
    DdeManagementLibraryError = enum :dde_management_library_error, [
        :NO_ERROR,            0x0000,
        :FIRST,               0x4000,
        :ADVACKTIMEOUT,       0x4000,
        :BUSY,                0x4001,
        :DATAACKTIMEOUT,      0x4002,
        :DLL_NOT_INITIALIZED, 0x4003,
        :DLL_USAGE,           0x4004,
        :EXECACKTIMEOUT,      0x4005,
        :INVALIDPARAMETER,    0x4006,
        :LOW_MEMORY,          0x4007,
        :MEMORY_ERROR,        0x4008,
        :NOTPROCESSED,        0x4009,
        :NO_CONV_ESTABLISHED, 0x400a,
        :POKEACKTIMEOUT,      0x400b,
        :POSTMSG_FAILED,      0x400c,
        :REENTRANCY,          0x400d,
        :SERVER_DIED,         0x400e,
        :SYS_ERROR,           0x400f,
        :UNADVACKTIMEOUT,     0x4010,
        :UNFOUND_QUEUE_ID,    0x4011,
        :LAST,                0x4011,
    ]

    define_prefix(:DMLERR, DdeManagementLibraryError)
  end
end