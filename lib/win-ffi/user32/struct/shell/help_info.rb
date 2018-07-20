module WinFFI
  if WINDOWS_VERSION >= :xp
    require 'win-ffi/core/struct/point'

    require_relative '../../enum/shell/help_info_context'

    module User32
      # Structure pointed to by lParam of WM_HELP
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-taghelpinfo
      class HELPINFO < FFIAdditions::Struct
        def cbSize; end
        def cbSize=(v) end
        def iContextType; end
        def iContextType=(v) end
        def iCtrlId; end
        def iCtrlId=(v) end
        def hItemHandle; end
        def hItemHandle=(v) end
        def dwContextId; end
        def dwContextId=(v) end
        def MousePos; end
        def MousePos=(v) end

        layout cbSize:       :uint,
               iContextType: HelpInfoContext,
               iCtrlId:      :int,
               hItemHandle:  :handle,
               dwContextId:  :dword,
               MousePos:     POINT

        def initialize
          super
          self.cbSize = self.size
        end

        private :cbSize, :cbSize=
      end
    end
  end
end