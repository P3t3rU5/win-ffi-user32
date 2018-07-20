require_relative '../../../../../win-ffi/user32'

module WinFFI
  module User32
    TransactionTypeFlag = enum :transaction_type_flag, [
        :NOBLOCK,         0x0002,  # CBR_BLOCK will not work
        :NODATA,          0x0004,  # DDE_FDEFERUPD
        :ACKREQ,          0x0008,  # DDE_FACKREQ
    ]

    define_prefix(:XTYPF, TransactionTypeFlag)
  end
end