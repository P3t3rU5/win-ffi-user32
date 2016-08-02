require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 7
    module User32
      # RegisterTouchWindow flag values
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd317326(v=vs.85).aspx
      TouchWindowFlag = enum :touch_window_flag, [
          :FINETOUCH, 0x00000001,
          :WANTPALM,  0x00000002
      ]

      define_prefix(:TWF, TouchWindowFlag)
    end
  end
end
