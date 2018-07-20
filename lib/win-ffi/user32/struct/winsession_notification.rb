module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # WTSSESSION_NOTIFICATION struct pointed by lParam, for WM_WTSSESSION_CHANGE
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagwtssession_notification
      class WTSSESSION_NOTIFICATION < FFIAdditions::Struct
        def cbSize; end
        def cbSize=(v) end
        def dwSessionId; end
        def dwSessionId=(v) end

        layout cbSize:      :dword,
               dwSessionId: :dword

        def initialize
          super
          self.cbSize = self.size
        end

        private :cbSize, :cbSize=
      end
    end
  end
end