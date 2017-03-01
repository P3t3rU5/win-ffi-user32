require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= :xp
    require 'win-ffi/user32/enum/window/function/flash_window_flag'
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms679348(v=vs.85).aspx
      class FLASHWINFO < FFIAdditions::Struct
        layout cbSize:            :uint,
               hwnd:              :hwnd,
               dwFlags: FlashWindowFlag,
               uCount:            :uint,
               dwTimeout:        :dword

        def initialize
          super
          self.cbSize = self.size
        end
      end
    end
  end
end
