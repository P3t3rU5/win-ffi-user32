module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646279(v=vs.85).aspx
    WmHotkeyId = enum :wm_hotkey_id, [:SNAPWINDOW,  -1, :SNAPDESKTOP, -2]

    define_prefix(:IDHOT, WmHotkeyId)
  end
end
