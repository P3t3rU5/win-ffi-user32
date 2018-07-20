module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagmenuiteminfoa#members
    MenuFlagState = enum :menu_flag_state, [
        :GRAYED,    0x00000003,
        :DISABLED,  0x00000003,
        :CHECKED,   0x00000008,
        :HILITE,    0x00000080,
        :ENABLED,   0x00000000,
        :UNCHECKED, 0x00000000,
        :UNHILITE,  0x00000000,
        :DEFAULT,   0x00001000
    ]

    define_prefix(:MFS, MenuFlagState)
  end
end