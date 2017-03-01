require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= 8
    module User32

      require 'win-ffi/user32/enum/interaction/pointer/pointer_device_cursor_type'

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802889(v=vs.85).aspx
      class POINTER_DEVICE_CURSOR_INFO < FFIAdditions::Struct
        layout cursorId: :uint32,
               cursor:   POINTER_DEVICE_CURSOR_TYPE
      end
    end
  end
end