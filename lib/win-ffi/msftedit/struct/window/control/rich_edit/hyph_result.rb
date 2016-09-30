require 'win-ffi/msftedit'


module WinFFI
  if WindowsVersion >= :vista
    require 'win-ffi/msftedit/enum/window/control/rich_edit/hyphenation'
    module Msftedit
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787932(v=vs.85).aspx
      class HYPHRESULT < FFIAdditions::Struct
        layout khyph:   Hyphenation,
               ichHyph:       :long,
               chHyph:        :char
      end
    end
  end
end