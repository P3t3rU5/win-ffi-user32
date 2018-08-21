module WinFFI
  if WINDOWS_VERSION >= 8
    require_relative '../../../enum/interaction/pointer/device_cursor_type'

    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802889
      class POINTER_DEVICE_CURSOR_INFO < FFIAdditions::Struct
        def cursorId; end
        def cursorId=(v) end
        def cursor; end
        def cursor=(v) end

        layout cursorId: :uint32,
               cursor:   POINTER_DEVICE_CURSOR_TYPE
      end
    end
  end
end