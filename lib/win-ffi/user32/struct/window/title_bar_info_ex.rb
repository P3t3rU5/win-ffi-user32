module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/constant/window'
    require 'win-ffi/core/struct/rect'
    module User32

      # https://msdn.microsoft.com/en-us/library/windows/desktop/aa969233
      class TITLEBARINFOEX < FFIAdditions::Struct
        layout cbSize:       :dword,
               rcTitleBar:     RECT,
               rgstate: [:dword, CCHILDREN_TITLEBAR + 1],
               rgrect:    [RECT, CCHILDREN_TITLEBAR + 1]

        def initialize
          super
          self.cbSize = self.size
        end
      end
    end
  end
end
