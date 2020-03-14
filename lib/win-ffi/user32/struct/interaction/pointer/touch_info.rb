module WinFFI
  if WINDOWS_VERSION >= 8
    require 'win-ffi/core/struct/rect'

    require_relative '../../../enum/interaction/touch/mask'

    require_relative 'info'

    module User32

      TOUCH_FLAG_NONE = 0x00000000
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-pointer_touch_info
      class POINTER_TOUCH_INFO < FFIAdditions::Struct
        attr_accessor :pointerInfo,
                      :touchFlags,
                      :touchMask,
                      :rcContact,
                      :rcContactRaw,
                      :orientation,
                      :pressure

        layout pointerInfo:  POINTER_INFO,
               touchFlags:   :int,
               touchMask:    TouchMask,
               rcContact:    RECT,
               rcContactRaw: RECT,
               orientation:  :uint32,
               pressure:     :uint32
      end
    end
  end
end
