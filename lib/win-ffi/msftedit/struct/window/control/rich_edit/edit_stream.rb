require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/msftedit/function/window/control/rich_edit'
    module Msftedit
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787891(v=vs.85).aspx
      class EDITSTREAM < FFIAdditions::Struct
        layout dwCookie:                :dword,
               dwError:                 :dword,
               pfnCallback: EditStreamCallback
      end
    end
  end
end