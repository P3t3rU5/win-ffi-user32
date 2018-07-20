module WinFFI
  module User32
    buffer = [
        :ACTIVE,   0x0001,
        :SMALLCAP, 0x0002,
        :ICON,     0x0004,
        :TEXT,     0x0008,
        :INBUTTON, 0x0010,
        :GRADIENT, 0x0020,
    ]

    buffer += [:BUTTONS, 0x1000] if WINDOWS_VERSION >= :xp

    DrawCaptionFlag = enum :draw_caption_flag, buffer

    define_prefix(:DC, DrawCaptionFlag)
  end
end