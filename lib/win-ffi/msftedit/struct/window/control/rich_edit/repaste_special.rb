module WinFFI
  if WINDOWS_VERSION >= :vista
    module Msftedit
      # Paste Special
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-repastespecial
      class REPASTESPECIAL < FFIAdditions::Struct
        attr_accessor :dwAspect, :dwParam

        layout dwAspect: :dword,
               dwParam:  :dword
      end
    end
  end
end