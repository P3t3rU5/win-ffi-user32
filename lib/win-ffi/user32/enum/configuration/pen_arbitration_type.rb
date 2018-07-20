module WinFFI
  if WINDOWS_VERSION > 8.1
    module User32
      # constants for SPI_{GET|SET}PENARBITRATIONTYPE
      PenArbitrationType = enum :pen_arbitration_type, [
          :NONE, 0x0000,
          :WIN8, 0x0001,
          :FIS,  0x0002,
          :SPT,  0x0003,
          :MAX,  0x0004,
      ]

      define_prefix(:PENARBITRATIONTYPE, PenArbitrationType)
    end
  end
end