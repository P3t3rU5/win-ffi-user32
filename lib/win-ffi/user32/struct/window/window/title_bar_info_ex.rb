require 'win-ffi/user32'

require 'win-ffi/core/struct/rect'

module WinFFI
  if WindowsVersion >= :vista
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/aa969233(v=vs.85).aspx
      class TITLEBARINFOEX < FFIAdditions::Struct
        layout cbSize:       :dword,
               rcTitleBar:     RECT,
               rgstate: [:dword, 6],
               rgrect:    [RECT, 6]

        def initialize
          super
          self.cbSize = self.size
        end
      end
    end
  end
end
