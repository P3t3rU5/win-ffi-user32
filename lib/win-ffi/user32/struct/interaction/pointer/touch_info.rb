module WinFFI
  if WINDOWS_VERSION >= 8
    require 'win-ffi/core/struct/rect'

    require_relative '../../../enum/interaction/touch/touch_mask'

    require_relative 'info'

    module User32

      TOUCH_FLAG_NONE = 0x00000000

      class POINTER_TOUCH_INFO < FFIAdditions::Struct
        def pointerInfo; end
        def pointerInfo=(v) end
        def touchFlags; end
        def touchFlags=(v) end
        def touchMask; end
        def touchMask=(v) end
        def rcContact; end
        def rcContact=(v) end
        def rcContactRaw; end
        def rcContactRaw=(v) end
        def orientation; end
        def orientation=(v) end
        def pressure; end
        def pressure=(v) end

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
