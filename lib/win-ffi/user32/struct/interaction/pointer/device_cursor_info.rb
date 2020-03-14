module WinFFI
  if WINDOWS_VERSION >= 8
    require_relative '../../../enum/interaction/pointer/device_cursor_type'

    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-pointer_device_cursor_info
      class POINTER_DEVICE_CURSOR_INFO < FFIAdditions::Struct
        attr_accessor :cursorId, :cursor

        layout cursorId: :uint32,
               cursor:   POINTER_DEVICE_CURSOR_TYPE
      end
    end
  end
end