module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../struct/window/control/rich_edit/char_range'

    module Msftedit
      # https://docs.microsoft.com/en-us/windows/desktop/api/richedit/ns-richedit-_findtextexa
      # https://docs.microsoft.com/en-us/windows/desktop/api/richedit/ns-richedit-_findtextexw
      class FINDTEXTEX < FFIAdditions::Struct
        def chrg; end
        def chrg=(v) end
        def lpstrText; end
        def lpstrText=(v) end
        def chrgText; end
        def chrgText=(v) end

        layout chrg:      CHARRANGE,
               lpstrText: :string,
               chrgText:  CHARRANGE
      end
    end
  end
end