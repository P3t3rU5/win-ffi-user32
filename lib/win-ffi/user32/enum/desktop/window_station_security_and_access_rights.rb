module WinFFI
  module User32
    # Standard Access Rights
    # The following are masks for the predefined standard access types
    WindowStationSecurityAndAccessRights = enum :window_station_security_and_access_rights, [
        :DELETE,        0x00010000,
        :READ_CONTROL,  0x00020000,
        :WRITE_DAC,     0x00040000,
        :WRITE_OWNER,   0x00080000,
        :SYNCHRONIZE,   0x00100000
    ]

    DELETE                   = 0x00010000
    READ_CONTROL             = 0x00020000
    WRITE_DAC                = 0x00040000
    WRITE_OWNER              = 0x00080000
    SYNCHRONIZE              = 0x00100000
  end
end