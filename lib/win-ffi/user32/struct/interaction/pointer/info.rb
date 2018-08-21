module WinFFI
  if WINDOWS_VERSION >= 8

    require 'win-ffi/core/struct/point'

    require_relative '../../../enum/interaction/pointer/flag'
    require_relative '../../../enum/interaction/pointer/input_type'
    require_relative '../../../enum/interaction/pointer/button_change_type'

    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454907(v=vs.85).aspx
      class POINTER_INFO < FFIAdditions::Struct
        def pointerType; end
        def pointerType=(v) end
        def pointerId; end
        def pointerId=(v) end
        def frameId; end
        def frameId=(v) end
        def pointerFlags; end
        def pointerFlags=(v) end
        def sourceDevice; end
        def sourceDevice=(v) end
        def hwndTarget; end
        def hwndTarget=(v) end
        def ptPixelLocation; end
        def ptPixelLocation=(v) end
        def ptHimetricLocation; end
        def ptHimetricLocation=(v) end
        def ptPixelLocationRaw; end
        def ptPixelLocationRaw=(v) end
        def ptHimetricLocationRaw; end
        def ptHimetricLocationRaw=(v) end
        def dwTime; end
        def dwTime=(v) end
        def historyCount; end
        def historyCount=(v) end
        def inputData; end
        def inputData=(v) end
        def dwKeyStates; end
        def dwKeyStates=(v) end
        def PerformanceCount; end
        def PerformanceCount=(v) end
        def ButtonChangeType; end
        def ButtonChangeType=(v) end

        layout pointerType:           POINTER_INPUT_TYPE,
               pointerId:             :uint32,
               frameId:               :uint32,
               pointerFlags:          PointerFlag,
               sourceDevice:          :handle,
               hwndTarget:            :hwnd,
               ptPixelLocation:       POINT,
               ptHimetricLocation:    POINT,
               ptPixelLocationRaw:    POINT,
               ptHimetricLocationRaw: POINT,
               dwTime:                :dword,
               historyCount:          :uint32,
               inputData:             :int32,
               dwKeyStates:           :dword,
               PerformanceCount:      :uint,
               ButtonChangeType:      PointerButtonChangeType
      end
    end
  end
end