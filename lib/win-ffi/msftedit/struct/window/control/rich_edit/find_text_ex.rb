module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../struct/window/control/rich_edit/char_range'

    module Msftedit
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-findtextexa
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-findtextexw
      class FINDTEXTEX < FFIAdditions::Struct
        attr_accessor :chrg, :lpstrText, :chrgText

        layout chrg:      CHARRANGE,
               lpstrText: :string,
               chrgText:  CHARRANGE
      end
    end
  end
end