module WinFFI
  module User32
    DIALOG_DPI_CHANGE_BEHAVIORS = enum :dialog_dpi_change_behaviors, [
        :DEFAULT,                  0x0000,
        :DISABLE_ALL,              0x0001,
        :DISABLE_RESIZE,           0x0002,
        :DISABLE_CONTROL_RELAYOUT, 0x0004
    ]

    define_prefix(:DDC, DIALOG_DPI_CHANGE_BEHAVIORS)
  end
end