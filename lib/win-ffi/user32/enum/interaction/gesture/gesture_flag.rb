require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 7
    module User32
      # Gesture flags - GESTUREINFO.dwFlags
      GestureFlag = enum :gesture_flag, [
          :BEGIN,   0x00000001,
          :INERTIA, 0x00000002,
          :END,     0x00000004
      ]

      define_prefix(:GF, GestureFlag)
    end
  end
end