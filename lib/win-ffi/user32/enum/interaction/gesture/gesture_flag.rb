module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      # Gesture flags - GESTUREINFO.dwFlags
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-taggestureinfo#remarks
      GestureFlag = enum :gesture_flag, [:BEGIN, 0x00000001, :INERTIA, 0x00000002, :END, 0x00000004]

      define_prefix(:GF, GestureFlag)
    end
  end
end