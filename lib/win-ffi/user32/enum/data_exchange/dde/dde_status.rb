require_relative '../../../../../win-ffi/user32'

module WinFFI
  module User32
    # DDE constants for wStatus field
    DdeStatus = enum :dde_status, [
        :FACK,          0x8000,
        :FBUSY,         0x4000,
        :FDEFERUPD,     0x4000,
        :FACKREQ,       0x8000,
        :FRELEASE,      0x2000,
        :FREQUESTED,    0x1000,
        :FAPPSTATUS,    0x00ff,
        :FNOTPROCESSED, 0x0000,

        :FACKRESERVED, ~(0x8000 | 0x4000 | 0x00ff),
        :FADVRESERVED, ~(0x8000 | 0x4000),
        :FDATRESERVED, ~(0x8000 | 0x2000 | 0x1000),
        :FPOKRESERVED, ~(0x2000),
    ]

    define_prefix(:DDE, DdeStatus)
  end
end