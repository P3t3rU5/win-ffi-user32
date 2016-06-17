require 'win-ffi/user32'
require 'win-ffi/user32/enum/data_exchange/dde/transaction_class'

module WinFFI
  module User32
    TransactionType = enum :transaction_type, [
        :ERROR,           0x8002,
        :ADVDATA,         0x4010,
        :ADVREQ,          0x2022,
        :ADVSTART,        0x1030,
        :ADVSTOP,         0x8040,
        :EXECUTE,         0x4050,
        :CONNECT,         0x1062,
        :CONNECT_CONFIRM, 0x8072,
        :XACT_COMPLETE,   0x8080,
        :POKE,            0x4090,
        :REGISTER,        0x80A2,
        :REQUEST,         0x20B0,
        :DISCONNECT,      0x80C2,
        :UNREGISTER,      0x80D2,
        :WILDCONNECT,     0x20E2,
        :MONITOR,         0x80F2,
        :MASK,            0x00F0,
        :SHIFT,           0x0004  #  shift to turn XTYP_ into an index
    ]

    define_prefix(:XTYP, TransactionType)
  end
end