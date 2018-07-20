module WinFFI
  module User32
    # 3D border styles
    EdgeFlag = enum :border_flag, [
        :RAISEDOUTER, 0x0001,
        :SUNKENOUTER, 0x0002,
        :RAISEDINNER, 0x0004,
        :SUNKENINNER, 0x0008,

        :OUTER,       0x0003,
        :INNER,       0x0012,

        :RAISED,      0x0005,
        :SUNKEN,      0x0010,
        :ETCHED,      0x0006,
        :BUMP,        0x0009,
    ]

    define_prefix(:BDR,  EdgeFlag)
    define_prefix(:EDGE, EdgeFlag)
  end
end