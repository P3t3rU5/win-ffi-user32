module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/msftedit/enum/window/control/rich_edit/hyphenation'

    module Msftedit
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-hyphresult
      class HYPHRESULT < FFIAdditions::Struct
        attr_accessor :khyph, :ichHyph, :chHyph

        layout khyph:   Hyphenation,
               ichHyph: :long,
               chHyph:  :char
      end
    end
  end
end