module WinFFI
  if WINDOWS_VERSION >= :vista
    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-nmhdr
      class NMHDR < FFIAdditions::Struct
        attr_accessor :hwnd, :idFrom, :code

        layout hwnd:   :hwnd,
               idFrom: :uint_ptr,
               code:   :uint
      end
    end
  end
end