require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632669(v=vs.85).aspx
    AnimateWindowFlag = enum :animate_window_flag, [
        :HOR_POSITIVE, 0x00000001,
        :HOR_NEGATIVE, 0x00000002,
        :VER_POSITIVE, 0x00000004,
        :VER_NEGATIVE, 0x00000008,
        :CENTER,       0x00000010,
        :HIDE,         0x00010000,
        :ACTIVATE,     0x00020000,
        :SLIDE,        0x00040000,
        :BLEND,        0x00080000,
    ]

    define_prefix(:AW, AnimateWindowFlag)
  end
end