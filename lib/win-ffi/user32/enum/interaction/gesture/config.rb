module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      # Gesture configuration flags - GESTURECONFIG.dwWant or GESTURECONFIG.dwBlock
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setgestureconfig#remarks
      GestureConfig = enum :gesture_config, [
          :ALLGESTURES,                         0x00000001,
          :ZOOM,                                0x00000001,
          :PAN,                                 0x00000001,
          :PAN_WITH_SINGLE_FINGER_VERTICALLY,   0x00000002,
          :PAN_WITH_SINGLE_FINGER_HORIZONTALLY, 0x00000004,
          :PAN_WITH_GUTTER,                     0x00000008,
          :PAN_WITH_INERTIA,                    0x00000010,
          :ROTATE,                              0x00000001,
          :TWOFINGERTAP,                        0x00000001,
          :PRESSANDTAP,                         0x00000001,
          :ROLLOVER,                            0x00000001
      ]

      define_prefix(:GC, GestureConfig)
    end
  end
end