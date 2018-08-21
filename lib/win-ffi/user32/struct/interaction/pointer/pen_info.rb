module WinFFI
  if WINDOWS_VERSION >= 8

    require_relative '../../../enum/interaction/pen/flag'
    require_relative '../../../enum/interaction/pen/mask'

    require_relative 'info'

    module User32
      class POINTER_PEN_INFO < FFIAdditions::Struct
        def pointerInfo; end
        def pointerInfo=(v) end
        def penFlags; end
        def penFlags=(v) end
        def penMask; end
        def penMask=(v) end
        def pressure; end
        def pressure=(v) end
        def rotation; end
        def rotation=(v) end
        def tiltX; end
        def tiltX=(v) end
        def tiltY; end
        def tiltY=(v) end

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
