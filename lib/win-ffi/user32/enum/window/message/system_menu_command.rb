module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/menurc/wm-syscommand#parameters
    buffer = [
        :ICON,         0xF020,
        :ZOOM,         0xF030,

        :SIZE,         0xF000,
        :MOVE,         0xF010,
        :MINIMIZE,     0xF020,
        :MAXIMIZE,     0xF030,
        :NEXTWINDOW,   0xF040,
        :PREVWINDOW,   0xF050,
        :CLOSE,        0xF060,
        :VSCROLL,      0xF070,
        :HSCROLL,      0xF080,
        :MOUSEMENU,    0xF090,
        :KEYMENU,      0xF100,
        :ARRANGE,      0xF110,
        :RESTORE,      0xF120,
        :TASKLIST,     0xF130,
        :SCREENSAVE,   0xF140,
        :HOTKEY,       0xF150,
        :DEFAULT,      0xF160,
        :MONITORPOWER, 0xF170,
        :CONTEXTHELP,  0xF180,
        :SEPARATOR,    0xF00F
    ]

    # buffer += [:ISSECURE, 0x00000001] if WINDOWS_VERSION >= :vista
    SCF_ISSECURE = 0x00000001 if WINDOWS_VERSION >= :vista

    SystemMenuComand = enum :system_menu_command, buffer

    define_prefix(:SC, SystemMenuComand)
  end
end