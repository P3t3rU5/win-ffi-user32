module WinFFI
  module User32
    Monitor = enum :monitor, [
        :MAX,               4,
        :APPCLASS, 0x00000001,
        :XTYP,         0x80F2,
    ]

    define_suffix(:MONITOR, Monitor)
  end
end