module WinFFI
  if WINDOWS_VERSION >= 7
    require 'win-ffi/core/struct/points'

    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-taggesturenotifystruct
      class GESTURENOTIFYSTRUCT < FFIAdditions::Struct
        def cbSize; end
        def cbSize=(v); end
        def dwFlags; end
        def dwFlags=(v); end
        def hwndTarget; end
        def hwndTarget=(v); end
        def ptsLocation; end
        def ptsLocation=(v); end
        def dwInstanceID; end
        def dwInstanceID=(v); end

        layout cbSize:       :uint,
               dwFlags:      :dword,
               hwndTarget:   :hwnd,
               ptsLocation:  POINTS,
               dwInstanceID: :dword

        def initialize
          super
          self.cbSize = self.size
        end

        private :cbSize, :cbSize=
      end
    end
  end
end