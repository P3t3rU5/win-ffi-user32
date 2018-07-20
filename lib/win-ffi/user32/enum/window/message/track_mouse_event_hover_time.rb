module WinFFI
  module User32
    TrackMouseEventHoverTime = enum :track_mouse_event_hover_time, [:DEFAULT, 0xFFFFFFFF]

    define_prefix(:HOVER, TrackMouseEventHoverTime)
  end
end