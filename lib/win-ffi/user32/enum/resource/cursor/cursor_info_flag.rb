module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagcursorinfo
    buffer = [:HIDDEN,  0x00000000, :SHOWING, 0x00000001]

    buffer += [:SUPPRESSED, 0x00000002] if WINDOWS_VERSION >= 8

    CursorInfoFlag = enum :cursor_info_flag, buffer

    define_prefix(:CURSOR, CursorInfoFlag)
  end
end