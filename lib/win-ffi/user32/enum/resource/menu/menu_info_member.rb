require 'win-ffi/user32'

module WinFFI
  module User32
    MenuInfoMember = enum :menu_info_member, [
        :MAXHEIGHT,       0x00000001,
        :BACKGROUND,      0x00000002,
        :HELPID,          0x00000004,
        :MENUDATA,        0x00000008,
        :STYLE,           0x00000010,
        :APPLYTOSUBMENUS, 0x80000000
    ]

    define_prefix(:MIM, MenuInfoMember)
  end
end