require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/dd162475(v=vs.85).aspx
    DrawAnimatedRectsId = enum :draw_animated_rects_id, [
        :OPEN,    1,
        :CAPTION, 3,
    ]

    define_prefix(:IDANI, DrawAnimatedRectsId)
  end
end