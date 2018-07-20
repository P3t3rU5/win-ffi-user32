module WinFFI
  module User32
    # Dialog Box Command IDs
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messagebox#return-value
    buffer = [
        :OK,        1,
        :CANCEL,    2,
        :ABORT,     3,
        :RETRY,     4,
        :IGNORE,    5,
        :YES,       6,
        :NO,        7,
        :CLOSE,     8,
        :HELP,      9,
        :TRYAGAIN, 10,
        :CONTINUE, 11
    ]

    buffer += [:TIMEOUT, 32000] if WINDOWS_VERSION >= :xp

    DialogBoxCommandID = enum :dialog_box_command_id, buffer

    define_prefix(:ID, DialogBoxCommandID, true)
  end
end