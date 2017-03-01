require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= :xp
    require 'win-ffi/user32/enum/shell/help_info_context'

    require 'win-ffi/core/struct/point'

    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb773313(v=vs.85).aspx
      # Structure pointed to by lParam of WM_HELP
      class HELPINFO < FFIAdditions::Struct
        layout cbSize:                 :uint,
               iContextType: HelpInfoContext,
               iCtrlId:                 :int,
               hItemHandle:          :handle,
               dwContextId:           :dword,
               MousePos:               POINT

        def initialize
          super
          self.cbSize = self.size
        end
      end
    end
  end
end