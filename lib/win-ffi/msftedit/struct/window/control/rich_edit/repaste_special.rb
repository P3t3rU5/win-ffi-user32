require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # Paste Special
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787948(v=vs.85).aspx
      class REPASTESPECIAL < FFIAdditions::Struct
        layout dwAspect: :dword,
               dwParam:  :dword
      end
    end
  end
end