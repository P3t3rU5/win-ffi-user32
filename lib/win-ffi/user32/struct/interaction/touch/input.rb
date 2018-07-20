module WinFFI
  if WINDOWS_VERSION >= 7
    require_relative '../../../enum/interaction/touch/touch_event_flag'

    module User32
      class TOUCHINPUT < FFIAdditions::Struct
        def x; end
        def x=(v); end
        def y; end
        def y=(v); end
        def hSource; end
        def hSource=(v); end
        def dwID; end
        def dwID=(v); end
        def dwFlags; end
        def dwFlags=(v); end
        def dwMask; end
        def dwMask=(v); end
        def dwTime; end
        def dwTime=(v); end
        def dwExtraInfo; end
        def dwExtraInfo=(v); end
        def cxContact; end
        def cxContact=(v); end
        def cyContact; end
        def cyContact=(v); end

        layout x:           :long,
               y:           :long,
               hSource:     :handle,
               dwID:        :dword,
               dwFlags:     TouchEventFlag,
               dwMask:      :dword,
               dwTime:      :dword,
               dwExtraInfo: :ulong,
               cxContact:   :dword,
               cyContact:   :dword
      end
    end
  end
end