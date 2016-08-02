require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633532%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    LockSetForegroundWindowCode = enum :lock_set_foreground_window_code, [
        :LOCK,   1,
        :UNLOCK, 2,
    ]

    define_prefix(:LSFW, LockSetForegroundWindowCode)
  end
end

