module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      # RegisterTouchWindow flag values
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registertouchwindow
      TouchWindowFlag = enum :touch_window_flag, [:FINETOUCH, 0x00000001, :WANTPALM,  0x00000002]

      define_prefix(:TWF, TouchWindowFlag)
    end
  end
end
