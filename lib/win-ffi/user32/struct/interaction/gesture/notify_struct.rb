module WinFFI
  if WINDOWS_VERSION >= 7
    require 'win-ffi/core/struct/points'

    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-taggesturenotifystruct
      class GESTURENOTIFYSTRUCT < FFIAdditions::Struct
        attr_accessor :cbSize, :dwFlags, :hwndTarget, :ptsLocation, :dwInstanceID

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