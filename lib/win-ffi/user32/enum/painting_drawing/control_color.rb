module WinFFI
  module User32
    #  Color Types
    ControlColor = enum :control_color, [
        :MSGBOX,    0,
        :EDIT,      1,
        :LISTBOX,   2,
        :BTN,       3,
        :DLG,       4,
        :SCROLLBAR, 5,
        :STATIC,    6,
        :MAX,       7,
    ]

    define_prefix(:CTLCOLOR, ControlColor)
  end
end