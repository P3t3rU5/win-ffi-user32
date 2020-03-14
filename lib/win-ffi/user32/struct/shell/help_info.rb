module WinFFI
  if WINDOWS_VERSION >= :xp
    require 'win-ffi/core/struct/point'

    require_relative '../../enum/shell/help_info_context'

    module User32
      # Structure pointed to by lParam of WM_HELP
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-helpinfo
      class HELPINFO < FFIAdditions::Struct
        attr_accessor :cbSize,
                      :iContextType,
                      :iCtrlId,
                      :hItemHandle,
                      :dwContextId,
                      :MousePos

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