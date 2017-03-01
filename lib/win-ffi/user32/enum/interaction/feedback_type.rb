require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh707350(v=vs.85).aspx
      FEEDBACK_TYPE = enum :feedback_type, [
          :TOUCH_CONTACTVISUALIZATION,  1,
          :PEN_BARRELVISUALIZATION,     2,
          :PEN_TAP,                     3,
          :PEN_DOUBLETAP,               4,
          :PEN_PRESSANDHOLD,            5,
          :PEN_RIGHTTAP,                6,
          :TOUCH_TAP,                   7,
          :TOUCH_DOUBLETAP,             8,
          :TOUCH_PRESSANDHOLD,          9,
          :TOUCH_RIGHTTAP,             10,
          :GESTURE_PRESSANDTAP,        11,
          :MAX,                0xFFFFFFFF
      ]

      define_prefix(:FEEDBACK, FEEDBACK_TYPE)
    end
  end
end