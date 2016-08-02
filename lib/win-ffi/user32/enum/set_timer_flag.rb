require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644906(v=vs.85).aspx
    SetTimerFlag = enum :set_timer_flag, [
        :MAXIMUM, 0x7FFFFFFF,
        :MINIMUM, 0x0000000A,
    ]

    define_prefix(:USER_TIMER, SetTimerFlag)
  end
end