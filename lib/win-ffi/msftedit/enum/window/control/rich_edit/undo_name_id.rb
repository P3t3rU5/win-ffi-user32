require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # UndoName info
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb774365(v=vs.85).aspx
      UNDONAMEID = enum :undo_name_id, [
          :UNKNOWN,   0,
          :TYPING,    1,
          :DELETE,    2,
          :DRAGDROP,  3,
          :CUT,       4,
          :PASTE,     5,
          :AUTOTABLE, 6
      ]

      define_prefix(:UID, UNDONAMEID)
    end
  end
end