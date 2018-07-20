module WinFFI
  module Shcore
    ScaleChangeFlag = enum :scale_change_flag, [
        :VALUE_NONE, 0x00,
        :SCALE,      0x01,
        :PHYSICAL,   0x02
    ]

    define_prefix(:SCF, ScaleChangeFlag)
  end
end