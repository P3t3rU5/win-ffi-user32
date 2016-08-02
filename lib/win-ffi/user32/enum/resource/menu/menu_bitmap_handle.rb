require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms647578(v=vs.85).aspx
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