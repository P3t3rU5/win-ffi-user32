require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/msftedit/struct/window/control/rich_edit/char_range'
    module Msftedit
      class FINDTEXTEX < FFIAdditions::Struct
        layout chrg:     CHARRANGE,
               lpstrText:  :string,
               chrgText: CHARRANGE
      end
    end
  end
end