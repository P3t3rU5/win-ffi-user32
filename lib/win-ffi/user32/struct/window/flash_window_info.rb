module WinFFI
  if WINDOWS_VERSION >= :xp
    require_relative '../../enum/window/function/flash_window_flag'

    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-flashwinfo
      class FLASHWINFO < FFIAdditions::Struct
        attr_accessor :cbSize, :hwnd, :dwFlags, :uCount, :dwTimeout

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
