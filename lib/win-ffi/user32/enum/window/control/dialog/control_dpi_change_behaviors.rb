module WinFFI
  module User32
    DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS = enum :dialog_control_dpi_change_behaviors, [
        :DEFAULT,             0x0000,
        :DISABLE_FONT_UPDATE, 0x0001,
        :DISABLE_RELAYOUT,    0x0002
    ]

    define_prefix(:DCDC, DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS)
  end
end