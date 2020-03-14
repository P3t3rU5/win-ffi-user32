module WinFFI
  if WINDOWS_VERSION >= 7
    require_relative '../../../enum/interaction/touch/event_flag'

    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-touchinput
      class TOUCHINPUT < FFIAdditions::Struct
        attr_accessor :x,
                      :y,
                      :hSource,
                      :dwID,
                      :dwFlags,
                      :dwMask,
                      :dwTime,
                      :dwExtraInfo,
                      :cxContact,
                      :cyContact

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