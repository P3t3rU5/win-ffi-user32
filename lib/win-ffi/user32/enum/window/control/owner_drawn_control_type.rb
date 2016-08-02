require 'win-ffi/user32'

module WinFFI
  module User32
    # Owner draw control types
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775802(v=vs.85).aspx
    OwnerDrawnControlType = enum :owner_drawn_control_type, [
        :MENU,     1,
        :LISTBOX,  2,
        :COMBOBOX, 3,
        :BUTTON,   4,
        :STATIC,   5,
    ]

    define_prefix(:ODT, OwnerDrawnControlType)
  end
end