module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/constant/window'
    require 'win-ffi/core/struct/rect'

    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-titlebarinfoex
      class TITLEBARINFOEX < FFIAdditions::Struct
        attr_accessor :cbSize, :rcTitleBar, :rgstate, :rgrect

        layout cbSize:     :dword,
               rcTitleBar: RECT,
               rgstate:    [:dword, CCHILDREN_TITLEBAR + 1],
               rgrect:     [RECT, CCHILDREN_TITLEBAR + 1]

        def initialize
          super
          self.cbSize = self.size
        end
      end
    end
  end
end
