require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 8
    module User32
      TouchInjectionFlag = enum :touch_injection_flag, [
          :DEFAULT,         0x1, # Specifies default touch visualizations.
          :INDIRECT,        0x2, # Specifies indirect touch visualizations.
          :NONE,            0x3, # Specifies no touch visualizations.
          :MAX_TOUCH_COUNT, 256, # Specifies the maximum number of simultaneous contacts.
      ]

      MAX_TOUCH_COUNT = 256

      define_prefix(:TOUCH_FEEDBACK, TouchInjectionFlag)
    end
  end
end