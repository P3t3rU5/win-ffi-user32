module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/msftedit/enum/window/control/rich_edit/em_getimecomptext_parameter'

    module Msftedit
      # EM_GETIMECOMPTEXT wparam structure
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-imecomptext
      class IMECOMPTEXT < FFIAdditions::Struct
        attr_accessor :cb, :flags

        layout cb:    :long,
               flags: EmGetimecomptextParameter
      end
    end
  end
end