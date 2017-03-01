require 'win-ffi/msftedit'


module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/msftedit/enum/window/control/rich_edit/em_getimecomptext_parameter'
    module Msftedit
      # EM_GETIMECOMPTEXT wparam structure
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787934(v=vs.85).aspx
      class IMECOMPTEXT < FFIAdditions::Struct
        layout cb:                        :long,
               flags: EmGetimecomptextParameter
      end
    end
  end
end