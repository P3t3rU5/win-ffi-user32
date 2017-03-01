require 'win-ffi/user32'

module WinFFI
  module User32
    if WINDOWS_VERSION >= 8

      require 'win-ffi/user32/enum/interaction/touch/touch_mask'

      require 'win-ffi/core/struct/rect'
      require 'win-ffi/user32/struct/interaction/pointer/pointer_info'

      TOUCH_FLAG_NONE = 0x00000000

      class POINTER_TOUCH_INFO < FFIAdditions::Struct
        layout pointerInfo: POINTER_INFO,
               touchFlags:          :int,
               touchMask:      TouchMask,
               rcContact:           RECT,
               rcContactRaw:        RECT,
               orientation:      :uint32,
               pressure:         :uint32
      end
    end
  end
end
