module WinFFI
  if WINDOWS_VERSION >= :vista
    module Msftedit
      # East Asia specific
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-compcolor
      class COMPCOLOR < FFIAdditions::Struct
        attr_accessor :crText, :crBackground, :dwEffects

        layout crText:       :colorref,
               crBackground: :colorref,
               dwEffects:    :dword
      end
    end
  end
end