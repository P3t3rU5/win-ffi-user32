require 'win-ffi/user32'

module WinFFI
  module User32
    if WINDOWS_VERSION >= 8
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437249(v=vs.85).aspx
      TouchHitTestingProximity = enum :touch_hit_testing_proximity, [
          :CLOSEST,   0x000,
          :FARTHEST,  0xFFF
      ]

      define_prefix(:TOUCH_HIT_TESTING_PROXIMITY, TouchHitTestingProximity)
    end
  end
end