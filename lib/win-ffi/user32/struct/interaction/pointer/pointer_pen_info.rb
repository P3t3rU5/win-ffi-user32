require 'win-ffi/user32'

module WinFFI
  module User32
    if WindowsVersion >= 8

      require 'win-ffi/user32/enum/interaction/pen/pen_flag'
      require 'win-ffi/user32/enum/interaction/pen/pen_mask'

      require 'win-ffi/user32/struct/interaction/pointer/pointer_info'

      class POINTER_PEN_INFO < FFIAdditions::Struct
        layout pointerInfo: POINTER_INFO,
               penFlags:         PenFlag,
               penMask:          PenMask,
               pressure:         :uint32,
               rotation:         :uint32,
               tiltX:             :int32,
               tiltY:             :int32
      end
    end
  end
end
