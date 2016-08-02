require 'win-ffi/user32'

module WinFFI
  module User32
    # Image type
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162496%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    DrawStateType = enum :draw_state_type, [
        :COMPLEX,    0x0000,
        :TEXT,       0x0001,
        :PREFIXTEXT, 0x0002,
        :ICON,       0x0003,
        :BITMAP,     0x0004
    ]

    define_prefix(:DST, DrawStateType)
  end
end