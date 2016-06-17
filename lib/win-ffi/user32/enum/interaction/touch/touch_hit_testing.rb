require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 8
    module User32
      TouchHitTesting = enum :touch_hit_testing, [
          :DEFAULT, 0x0,
          :CLIENT,  0x1,
          :NONE,    0x2
      ]

      define_prefix(:TOUCH_HIT_TESTING, TouchHitTesting)
    end
  end
end