require 'win-ffi/user32'

module WinFFI
  module User32
    MenuDrag = enum :menu_drag, [
        :CONTINUE, 0,
        :ENDMENU,  1
    ]

    define_prefix(:MND, MenuDrag)
  end
end