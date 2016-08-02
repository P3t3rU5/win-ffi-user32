require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 7
    module User32
      # Gesture IDs
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd353242(v=vs.85).aspx
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
