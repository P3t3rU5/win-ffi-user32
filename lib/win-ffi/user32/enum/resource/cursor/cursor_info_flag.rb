require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648381%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    buffer = [
        :HIDDEN,  0x00000000,
        :SHOWING, 0x00000001
    ]

    if WindowsVersion >= 8
      buffer += [:SUPPRESSED, 0x00000002]
    end

    CursorInfoFlag = enum :cursor_info_flag, buffer

    define_prefix(:CURSOR, CursorInfoFlag)
  end
end