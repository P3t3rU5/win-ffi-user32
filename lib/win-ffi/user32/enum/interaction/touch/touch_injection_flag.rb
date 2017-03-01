require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802879(v=vs.85).aspx
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