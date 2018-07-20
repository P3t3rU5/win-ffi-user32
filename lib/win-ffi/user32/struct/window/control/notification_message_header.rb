module WinFFI
  if WINDOWS_VERSION >= :vista
    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/richedit/ns-richedit-_nmhdr
      class NMHDR < FFIAdditions::Struct
        def hwnd; end
        def hwnd=(v) end
        def idFrom; end
        def idFrom=(v) end
        def code; end
        def code=(v) end

        layout hwnd:   :hwnd,
               idFrom: :uint_ptr,
               code:   :uint
      end
    end
  end
end