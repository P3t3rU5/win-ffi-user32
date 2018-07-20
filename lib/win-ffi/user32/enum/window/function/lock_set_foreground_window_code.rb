module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633532
    LockSetForegroundWindowCode = enum :lock_set_foreground_window_code, [:LOCK, 1, :UNLOCK, 2]

    define_prefix(:LSFW, LockSetForegroundWindowCode)
  end
end

