require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775514(v=vs.85).aspx
      class NMHDR < FFIAdditions::Struct
        layout hwnd:   :hwnd,
               idFrom: :uint,
               code:   :uint
      end
    end
  end
end