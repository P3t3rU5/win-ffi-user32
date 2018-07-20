module WinFFI
  module User32
    # Standard Cursor
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadcursora#parameters
    buffer = [
        :ARROW,       32512,
        :IBEAM,       32513,
        :WAIT,        32514,
        :CROSS,       32515,
        :UPARROW,     32516,
        :SIZE,        32640,
        :ICON,        32641,
        :SIZENWSE,    32642,
        :SIZENESW,    32643,
        :SIZEWE,      32644,
        :SIZENS,      32645,
        :SIZEALL,     32646,
        :NO,          32648,
        :HAND,        32649,
        :APPSTARTING, 32650,
        :HELP,        32651
    ]

    buffer += [:PIN, 32671, :PERSON, 32672] if WINDOWS_VERSION >= 10

    LoadCursorId = enum :load_cursor_id, buffer

    define_prefix(:IDC, LoadCursorId)
  end
end