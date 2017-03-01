require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      class << self
        def RIDEV_EXMODE(mode)
          mode & RIDEV_EXMODEMASK
        end

        #define RAWINPUT_ALIGN(x)   (((x) + sizeof(QWORD) - 1) & ~(sizeof(QWORD) - 1))
        def RAWINPUT_ALIGN(x)   (((x) + FFI.type_size(:dword) - 1) & ~(FFI.type_size(:dword) - 1)); end

        #ifdef _WIN64
        #define RAWINPUT_ALIGN(x)   (((x) + sizeof(QWORD) - 1) & ~(sizeof(QWORD) - 1))
        #else   // _WIN64
        #define RAWINPUT_ALIGN(x)   (((x) + sizeof(DWORD) - 1) & ~(sizeof(DWORD) - 1))
        #endif  // _WIN64
        # TODO

        # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645593(v=vs.85).aspx
        #define NEXTRAWINPUTBLOCK(ptr) ((PRAWINPUT)RAWINPUT_ALIGN((ULONG_PTR)((PBYTE)(ptr) + (ptr)->header.dwSize)))
        def NEXTRAWINPUTBLOCK(ptr)
          RAWINPUT_ALIGN(ptr.address + ptr.header.dwSize)
        end

        # Use this macro to get the input code from wParam.
        # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645592(v=vs.85).aspx
        #define GET_RAWINPUT_CODE_WPARAM(wParam)    ((wParam) & 0xff)
        def GET_RAWINPUT_CODE_WPARAM(wParam) wParam & 0xff; end

      end
    end
  end
end