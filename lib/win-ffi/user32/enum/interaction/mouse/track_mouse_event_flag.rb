module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645604
    TrackMouseEventFlag = enum :track_mouse_event_flag, [
        :HOVER,     0x00000001,
        :LEAVE,     0x00000002,
        :NONCLIENT, 0x00000010,
        :QUERY,     0x40000000,
        :CANCEL,    0x80000000,
    ]

    define_prefix(:TME, TrackMouseEventFlag)
  end
end