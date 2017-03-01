require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      # Gesture flags - GESTUREINFO.dwFlags
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd353232(v=vs.85).aspx
      GestureFlag = enum :gesture_flag, [
          :BEGIN,   0x00000001,
          :INERTIA, 0x00000002,
          :END,     0x00000004
      ]

      define_prefix(:GF, GestureFlag)
    end
  end
end