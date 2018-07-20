module WinFFI
  module User32
    AllowSetForegroundWindowProcessId = enum :allow_set_foreground_window_process_id, [:ANY, -1]

    define_prefix(:ASFW, AllowSetForegroundWindowProcessId)
  end
end