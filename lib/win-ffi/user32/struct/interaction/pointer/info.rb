module WinFFI
  if WINDOWS_VERSION >= 8

    require 'win-ffi/core/struct/point'

    require_relative '../../../enum/interaction/pointer/flag'
    require_relative '../../../enum/interaction/pointer/input_type'
    require_relative '../../../enum/interaction/pointer/button_change_type'

    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-pointer_info
      class POINTER_INFO < FFIAdditions::Struct
        attr_accessor :pointerType,
                      :pointerId,
                      :frameId,
                      :pointerFlags,
                      :sourceDevice,
                      :hwndTarget,
                      :ptPixelLocation,
                      :ptHimetricLocation,
                      :ptPixelLocationRaw,
                      :ptHimetricLocationRaw,
                      :dwTime,
                      :historyCount,
                      :inputData,
                      :dwKeyStates,
                      :PerformanceCount,
                      :ButtonChangeType

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