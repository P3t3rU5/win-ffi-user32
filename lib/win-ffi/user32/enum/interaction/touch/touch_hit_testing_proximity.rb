module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # https://docs.microsoft.com/en-us/previous-versions/windows/desktop/input_touchhittest/hit-testing-scores
      TouchHitTestingProximity = enum :touch_hit_testing_proximity, [:CLOSEST, 0x000, :FARTHEST, 0xFFF]

      define_prefix(:TOUCH_HIT_TESTING_PROXIMITY, TouchHitTestingProximity)
    end
  end
end