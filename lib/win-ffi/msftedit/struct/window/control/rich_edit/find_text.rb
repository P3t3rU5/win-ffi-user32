module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/msftedit/struct/window/control/rich_edit/char_range'

    module Msftedit
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-findtexta
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-findtextw
      class FINDTEXT < FFIAdditions::Struct
        attr_accessor :chrg, :lpstrText

        layout chrg:      CHARRANGE,
               lpstrText: :string
      end
    end
  end
end