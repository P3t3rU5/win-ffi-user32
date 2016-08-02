require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787537(v=vs.85).aspx
    ScrollBarInfoFlag = enum :scrollbar_info_flag, [
        :RANGE,           0x0001,
        :PAGE,            0x0002,
        :POS,             0x0004,
        :DISABLENOSCROLL, 0x0008,
        :TRACKPOS,        0x0010,
        :ALL,             0x0017 # :RANGE | :PAGE | :POS | :TRACKPOS
    ]

    define_prefix(:SIF, ScrollBarInfoFlag)
  end
end