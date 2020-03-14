module WinFFI
  if WINDOWS_VERSION >= 8

    require_relative '../../../enum/interaction/pen/flag'
    require_relative '../../../enum/interaction/pen/mask'

    require_relative 'info'

    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-pointer_pen_info
      class POINTER_PEN_INFO < FFIAdditions::Struct
        attr_accessor :pointerInfo,
                      :penFlags,
                      :penMask,
                      :pressure,
                      :rotation,
                      :tiltX,
                      :tiltY

        layout pointerInfo: POINTER_INFO,
               penFlags:    PenFlag,
               penMask:     PenMask,
               pressure:    :uint32,
               rotation:    :uint32,
               tiltX:       :int32,
               tiltY:       :int32
      end
    end
  end
end
