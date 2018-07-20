module WinFFI
  module User32
    # Owner draw actions
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagdrawitemstruct
    OwnerDrawnAction = enum :owner_drawn_action, [:DRAWENTIRE, 0x0001, :SELECT, 0x0002, :FOCUS, 0x0004]

    define_prefix(:ODA, OwnerDrawnAction)
  end
end