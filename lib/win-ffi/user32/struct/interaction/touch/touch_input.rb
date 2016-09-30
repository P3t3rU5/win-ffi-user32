require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 7
    require 'win-ffi/user32/enum/interaction/touch/touch_event_flag'
    module User32

      class TOUCHINPUT < FFIAdditions::Struct
        layout x:                :long,
               y:                :long,
               hSource:        :handle,
               dwID:            :dword,
               dwFlags: TouchEventFlag,
               dwMask:          :dword,
               dwTime:          :dword,
               dwExtraInfo:     :ulong,
               cxContact:       :dword,
               cyContact:       :dword
      end
    end
  end
end