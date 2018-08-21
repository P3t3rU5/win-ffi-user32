module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      # Gesture IDs
      # https://docs.microsoft.com/en-us/windows/desktop/wintouch/wm-gesture#remarks
      GestureIdentifier = enum :gesture_identifier, [
          :BEGIN,        1,
          :END,          2,
          :ZOOM,         3,
          :PAN,          4,
          :ROTATE,       5,
          :TWOFINGERTAP, 6,
          :PRESSANDTAP,  7,
          :ROLLOVER,     7
      ]

      define_prefix(:GID, GestureIdentifier)
    end
  end
end
