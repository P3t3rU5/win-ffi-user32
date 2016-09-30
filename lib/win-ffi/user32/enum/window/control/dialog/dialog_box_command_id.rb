require 'win-ffi/user32'

module WinFFI
  module User32
    # Dialog Box Command IDs
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645505(v=vs.85).aspx
    buffer = [
        :OK,        1, # The OK button was selected.
        :CANCEL,    2, # The Cancel button was selected.
        :ABORT,     3, # The Abort button was selected.
        :RETRY,     4, # The Retry button was selected.
        :IGNORE,    5, # The Ignore button was selected.
        :YES,       6, # The Yes button was selected.
        :NO,        7, # The No button was selected.
        :CLOSE,     8,
        :HELP,      9,
        :TRYAGAIN, 10, # The Try Again button was selected.
        :CONTINUE, 11 # The Continue button was selected.
    ]

    buffer += [:TIMEOUT, 32000] if WindowsVersion >= :xp

    DialogBoxCommandID = enum :dialog_box_command_id, buffer

    define_prefix(:ID, DialogBoxCommandID, true)
  end
end