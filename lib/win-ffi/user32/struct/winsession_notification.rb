module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # WTSSESSION_NOTIFICATION struct pointed by lParam, for WM_WTSSESSION_CHANGE
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-wtssession_notification
      class WTSSESSION_NOTIFICATION < FFIAdditions::Struct
        attr_accessor :cbSize, :dwSessionId

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