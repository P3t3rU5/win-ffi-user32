module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # https://docs.microsoft.com/en-us/previous-versions/windows/desktop/inputmsg/touch-hit-testing-window-constants
      TouchHitTesting = enum :touch_hit_testing, [:DEFAULT, 0x0, :CLIENT, 0x1, :NONE, 0x2]

      define_prefix(:TOUCH_HIT_TESTING, TouchHitTesting)
    end
  end
end