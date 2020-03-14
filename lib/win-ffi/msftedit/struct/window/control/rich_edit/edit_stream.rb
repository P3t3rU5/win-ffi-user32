module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/msftedit/function/window/control/rich_edit'
    module Msftedit
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-editstream
      class EDITSTREAM < FFIAdditions::Struct
        attr_accessor :dwCookie, :dwError, :pfnCallback

        layout dwCookie:    :dword,
               dwError:     :dword,
               pfnCallback: EditStreamCallback
      end
    end
  end
end