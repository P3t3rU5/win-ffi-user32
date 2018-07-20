module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # https://docs.microsoft.com/en-us/previous-versions/windows/desktop/input_touchinjection/constants
      TouchInjectionFlag = enum :touch_injection_flag, [
          :DEFAULT,         0x1,
          :INDIRECT,        0x2,
          :NONE,            0x3,
          :MAX_TOUCH_COUNT, 256,
      ]

      MAX_TOUCH_COUNT = 256

      define_prefix(:TOUCH_FEEDBACK, TouchInjectionFlag)
    end
  end
end