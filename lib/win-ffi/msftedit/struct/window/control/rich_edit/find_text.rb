require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/msftedit/struct/window/control/rich_edit/char_range'
    module Msftedit
      class FINDTEXT < FFIAdditions::Struct
        layout chrg:    CHARRANGE,
               lpstrText: :string
      end
    end
  end
end