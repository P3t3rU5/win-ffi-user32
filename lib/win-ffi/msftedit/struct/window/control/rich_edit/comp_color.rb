require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # East Asia specific
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787889(v=vs.85).aspx
      class COMPCOLOR < FFIAdditions::Struct
        layout crText:       :colorref,
               crBackground: :colorref,
               dwEffects:       :dword
      end
    end
  end
end