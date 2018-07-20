module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagmenuiteminfoa#members
    MenuBitmapHandle = enum :menu_bitmap_handle, [
        :CALLBACK ,      -1,
        :SYSTEM,          1,
        :MBAR_RESTORE,    2,
        :MBAR_MINIMIZE,   3,
        :MBAR_CLOSE,      5,
        :MBAR_CLOSE_D,    6,
        :MBAR_MINIMIZE_D, 7,
        :POPUP_CLOSE,     8,
        :POPUP_RESTORE,   9,
        :POPUP_MAXIMIZE, 10,
        :POPUP_MINIMIZE, 11,
    ]

    define_prefix(:HBMMENU, MenuBitmapHandle)
  end
end