module WinFFI
  if WINDOWS_VERSION >= :xp
    require_relative '../../enum/window/function/flash_window_flag'

    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-flashwinfo
      class FLASHWINFO < FFIAdditions::Struct
        def cbSize; end
        def cbSize=(v); end
        def hwnd; end
        def hwnd=(v); end
        def dwFlags; end
        def dwFlags=(v); end
        def uCount; end
        def uCount=(v); end
        def dwTimeout; end
        def dwTimeout=(v); end

        layout cbSize:    :uint,
               hwnd:      :hwnd,
               dwFlags:   FlashWindowFlag,
               uCount:    :uint,
               dwTimeout: :dword

        def initialize
          super
          self.cbSize = self.size
        end

        private :cbSize, :cbSize=
      end
    end
  end
end
