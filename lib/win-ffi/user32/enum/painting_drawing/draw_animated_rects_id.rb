module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawanimatedrects
    DrawAnimatedRectsId = enum :draw_animated_rects_id, [:OPEN, 1, :CAPTION, 3]

    define_prefix(:IDANI, DrawAnimatedRectsId)
  end
end