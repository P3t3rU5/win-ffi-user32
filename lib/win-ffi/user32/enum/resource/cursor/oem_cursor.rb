module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setsystemcursor#parameters
    OemCursor = enum :oem_cursor, [
        :NORMAL,       32512,
        :ARROW,        32512,
        :IBEAM,        32513,
        :WAIT,         32514,
        :CROSS,        32515,
        :UP,           32516,
        :SIZE,         32640,
        :ICON,         32641,
        :SIZENWSE,     32642,
        :SIZENESW,     32643,
        :SIZEWE,       32644,
        :SIZENS,       32645,
        :SIZEALL,      32646,
        :ICOCUR,       32647,
        :NO,           32648,
        :HAND,         32649,
        :APPSTARTING,  32650,
        :HELP,         32651
    ]

    define_prefix(:OCR, OemCursor)
  end
end